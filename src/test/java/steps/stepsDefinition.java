package steps;

import Statments.ConsultEmployee;
import Statments.CreateEmployee;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;

import java.io.IOException;

public class stepsDefinition {

    @Dado("que vou executar a API restapiexample")
    public void que_vou_executar_a_api_restapiexample() {
        System.out.println("Iniciando a execucao da API");
    }

    @Quando("enviar a requisicao com nome <name>, salario <salary> e idade <age>")
    public void enviar_a_requisicao_com_nome_name_salario_salary_e_idade_age() throws IOException {
        new CreateEmployee().employee();
    }

    @Entao("servico retorna status <status> duzentos e um com response para validacao")
    public void servico_retorna_status_status_duzentos_e_um_com_response_para_validacao() {
        new CreateEmployee().getResponsePostMainFields();
        new CreateEmployee().getResponsePostSubFieldsData();
    }


    @Dado("que realizei a criacao de um funcionario")
    public void que_realizei_a_criacao_de_um_funcionario() {
        System.out.println("Iniciando a execucao da API");
    }
    @Quando("vou conulstar seus dados criados")
    public void vou_conulstar_seus_dados_criados() throws IOException {
        new ConsultEmployee().consultEmployeeCreated();
    }
    @Entao("servico retorna status {int} com os dados para validacao")
    public void servico_retorna_status_com_os_dados_para_validacao(Integer int1) {
        new ConsultEmployee().getResponseConsultMainFields();
        new ConsultEmployee().getResponseConsultSubFieldsData();
    }

}
