package Statments;

import Requests.RequestsJson;
import Suporte.DataController;
import org.json.JSONObject;

import java.io.IOException;

public class CreateEmployee {

    RequestsJson request = new RequestsJson();


    public void employee () throws IOException {
        JSONObject obj = new JSONObject();
        obj.put("name", "Bruno Cesar Rodrigues");
        obj.put("salary", "10000");
        obj.put("age", "30");

        request.sendPost(obj);
    }

    public void getResponsePostMainFields() {
        String [] fields = {"status", "data", "message"};
        JSONObject obj = new JSONObject(DataController.getData().get("CREATE_EMPLOYEE"));

        for (int i = 0; i < obj.length(); i++) {
            if(obj.has(fields[i])) {
                System.out.println("O campo: "  + fields[i] + " foi encontrado - Valor: " + obj.get(fields[i]));
            } else {
                System.out.println("O campo: " + fields[i] + " nao foi encontrado");
            }
        }
    }

    public void getResponsePostSubFieldsData () {
        String [] fields = {"name", "salary", "age", "id"};
        JSONObject obj = new JSONObject(DataController.getData().get("CREATE_EMPLOYEE"));

        if (obj.has("data")) {
            JSONObject objData = obj.getJSONObject("data");
            for (int i = 0; i < objData.length(); i ++ ) {
                if(objData.has(fields[i])) {
                    System.out.println("O campo: "  + fields[i] + " foi encontrado - Valor: " + objData.get(fields[i]));
                } else {
                    System.out.println("O campo: " + fields[i] + " nao foi encontrado");
                }
            }
        }
    }
}
