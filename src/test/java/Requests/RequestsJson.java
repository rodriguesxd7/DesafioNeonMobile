package Requests;

import Suporte.DataController;
import io.restassured.RestAssured;
import org.json.JSONObject;
import java.io.IOException;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.is;

public class RequestsJson {

    String uri = "http://dummy.restapiexample.com/api/v1/";
    String response;

    public void sendPost(JSONObject obj) throws AssertionError {
        try {
            response = RestAssured
                    .given()
                    .contentType("application/json")
                    .body(obj.toString())
                    .when()
                    .post(uri + "create")
                    .then()
                    .statusCode(200)
                    .extract()
                    .response().getBody().asString();
        } catch (AssertionError e) {
            System.out.println("Ocorreu uma exceção: " + e + " ao executar o post");
        }

        DataController.getData().put("CREATE_EMPLOYEE", response);
    }

    public void consultClient(String id) throws IOException {
        try {
            response = RestAssured
                    .given()
                    .contentType("application/json")
                    .when()
                    .get(uri + "employee/" + id)
                    .then()
                    .statusCode(200)
                    .body("status", is("success"))
                    .extract()
                    .response().getBody().asString();
        } catch (AssertionError e) {
            System.out.println("Ocorreu uma exceção: " + e + " ao executar o post");
        }

        DataController.getData().put("CONSULT_EMPLOYEE", response);
    }
}