package Statments;

import Requests.RequestsJson;
import Suporte.DataController;
import io.restassured.path.json.JsonPath;
import org.json.JSONObject;

import java.io.IOException;

public class ConsultEmployee {
    RequestsJson request = new RequestsJson();

    public void consultEmployeeCreated() throws IOException {
        JsonPath res = new JsonPath(DataController.getData().get("CREATE_EMPLOYEE"));
        String id = res.getJsonObject("data.id").toString();

        request.consultClient(id);
    }

    public void getResponseConsultMainFields() {
        String fields[] = {"status", "data", "message"};
        JSONObject obj = new JSONObject(DataController.getData().get("CONSULT_EMPLOYEE"));

        for (int i = 0; i < obj.length(); i++) {
            if (obj.has(fields[i])) {
                System.out.println("O campo: " + fields[i] + " foi encontrado - Valor: " + obj.get(fields[i]));
            } else {
                System.out.println("O campo: " + fields[i] + " nao foi encontrado");
            }
        }
    }

    public void getResponseConsultSubFieldsData () {
        String [] fields = {"id", "employee_name", "employee_salary", "employee_age", "profile_image"};
        JSONObject obj = new JSONObject(DataController.getData().get("CONSULT_EMPLOYEE"));


        if (obj.get("data").equals(null)) {
            if (obj.has("data")) {
                JSONObject objData = obj.getJSONObject("data");
                for (int i = 0; i < objData.length(); i ++ ) {
                    if(objData.has(fields[i])) {
                        System.out.println("O campo: "  + fields[i] + " foi encontrado - Valor: " + objData.get(fields[i]));
                    } else {
                        System.out.println("O campo: " + fields[i] + " nao foi encontrado");
                    }
                }
            } else {
                System.out.println("Campo data nao foi encontrado");
            }
        } else {
            System.out.println("A requisicao deu certo, porem os dados do campo 'data' nao foram retornados: verificar o motivo");
        }
    }
}
