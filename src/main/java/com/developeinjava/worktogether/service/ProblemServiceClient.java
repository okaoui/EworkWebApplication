package com.developeinjava.worktogether.service;

import org.springframework.web.client.RestTemplate;

import com.developeinjava.web.problemservice.beans.Problem;
import com.developeinjava.worktogether.model.ProblemList;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;


public class ProblemServiceClient {
	
	public static void main(String[] args){
		RestTemplate restTemplate = new RestTemplate();
        //Problem problem = restTemplate.getForObject("http://jaxrs.developeinjava.com/problemStore/get/json/32", Problem.class);
       // System.out.println(problem.toString());
        
        //Problem problem2 = restTemplate.getForObject("http://jaxrs.developeinjava.com/problemStore/get/xml/33", Problem.class);
        //System.out.println(problem2.getPid());
        
		//ProblemList list = restTemplate.getForObject("http://jaxrs.developeinjava.com/problemStore/get/json/java", ProblemList.class);
		
		//for(Problem pro : list.getList())
			//System.out.println(pro.toString());
		
		//RestTemplate restTemplateForXml = new RestTemplate();
		//Source problemXml = restTemplateForXml.getForObject("http://jaxrs.developeinjava.com/problemStore/get/xml/java", Source.class);
		//ProblemList problems = restTemplateForXml.getForObject("http://jaxrs.developeinjava.com/problemStore/get/xml/java", ProblemList.class);
		//System.out.println(problemXml);
		//System.out.println(problems.getList().size());
		//Problem p = problems.getList().get(0);
		//System.out.println(p.getId());
		/*for(Problem p:problems.getList()){
			System.out.println(p.getPid());
		}*/
		
		Client c = new Client();
		WebResource resource = c.resource("http://jaxrs.developeinjava.com/problemStore/get/xml/33");
		WebResource resource2 = c.resource("http://jaxrs.developeinjava.com/problemStore/create");
		WebResource resource3 = c.resource("http://jaxrs.developeinjava.com/problemStore/update");
		WebResource resource4 = c.resource("http://jaxrs.developeinjava.com/problemStore/delete/37");

		//Problem p = resource.get(Problem.class);
		//ProblemList list = resource2.accept("application/json").get(ProblemList.class);
		//System.out.println(list.getList().size());
		
		String input = "aid=489&lang=php&overview=create a web portal for school&fulldesc=present school events, trips, curriculam contact "
				+ "administration, raise request";
		
		String inputu = "pid=37&lang=java&overview=send notification to parents&fulldesc=inform parents about school events, SMS/EMAIL";
		try{
		//ClientResponse response = resource2.type("application/x-www-form-urlencoded")
		  // .post(ClientResponse.class, input);
		
		//ClientResponse responseu = resource3.type("application/x-www-form-urlencoded")
			//	   .put(ClientResponse.class, inputu);
		
		ClientResponse responsed = resource4.delete(ClientResponse.class);
		if (responsed.getStatus() != 200) {
			throw new RuntimeException("Failed : HTTP error code : "
			     + responsed.getStatus());
		}

		System.out.println("Output from Server .... \n");
		String output = responsed.getEntity(String.class);
		System.out.println(output);

	  } catch (Exception e) {

		e.printStackTrace();

	  }
	}

}
