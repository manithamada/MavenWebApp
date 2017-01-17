package com.taran.ph.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;


// The Java class will be hosted at the URI path "/helloworld"
@Path("/hello")
public class Hello {
    // The Java method will process HTTP GET requests
//    @GET
//    // The Java method will produce content identified by the MIME Media type "text/plain"
//    @Produces("text/plain")
//    public String getClichedMessage() {
//        // Return some cliched textual content
//        return "Hello World";
//    }

    @GET
    @Path("/{param}")
    public Response getMsg(@PathParam("param") String msg) {

        String output = "Jersey say : " + msg;

        return Response.status(200).entity(output).build();

    }

//    public static void main(String[] args) throws IOException {
//        HttpServer server = HttpServerFactory.create("http://localhost:9998/");
//        server.start();
//
//        System.out.println("Server running");
//        System.out.println("Visit: http://localhost:9998/helloworld");
//        System.out.println("Hit return to stop...");
//        System.in.read();
//        System.out.println("Stopping server");
//        server.stop(0);
//        System.out.println("Server stopped");
//    }
}
