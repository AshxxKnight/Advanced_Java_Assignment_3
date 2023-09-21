<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Product Management Tool</title>
    </head>

    <body>
        <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//http 1.1
            response.setHeader("Pragma", "no-cache" ); //http 1
            response.setHeader("Expires","0");// proxies
            
            if(session.getAttribute("username")==null){ 
            	response.sendRedirect("login.jsp"); 
            	} 
            	%>
            <header class="d-flex justify-content-between p-2">
                <h3 class="fs-3">Product Management Tool</h3>
            </header>
            
            
            <p class="my-auto">Hi ${username}
            
            <form action="Logout" method = "get">
                <input type="submit" value="Logout">
            </form>
            
            </p>
	
	<main>

        <section class="m-3">
        
            <form action="DbServlet" method = "get">
                <div class="row mb-3">
                    
                        <label for="nameField" class="col-sm-2 col-lg-1 form-label">Title</label>
                    <div class="col-8">
                        <input type="text" name="name" id="nameField" class="form-control-sm" required>
                    </div>
				</div>
				<div class="row mb-3">
                    <label for="nameField" class="col-sm-2 col-lg-1 form-label">Quantity</label>
                    <div class="col-sm-4 col-lg-2">
                        <input type="text" name="quantity" id="nameField" class="form-control-sm" required>
                    </div>
                </div>
                    
                    <div class="row mb-3">

                    
                        <label for="nameField" class="col-sm-2 col-lg-1 form-label">Size</label>
                    
                    <div class="col-sm-4 col-lg-2">
                        <input type="text" name="size" id="nameField" class="form-control-sm" required>
                    </div>
                    </div>
                    
                    <div class="row mb-3">

                    
                        <label for="imageUrlField" class="col-sm-2 col-lg-1 form-label">Image Link</label>
                    
                    <div class="col-sm-4 col-lg-2">
                        <input type="url" name="image" id="imageUrlField" class="form-control-sm">
                    </div>
                    </div>
                                 
                <br>
                <br>
                <button type="submit">Submit</button>
            </form>
</section>
            <section class="m-3">
            <table class="table table-bordered">
                <tr>
					<th>S. NO.</th>
                    <th>Title</th>
                    <th>Quantity</th>
                    <th>Size</th>
                    <th>Image</th>
                    <th>Action</th>

                </tr>
                <tbody>
                </tbody>
            </table>
            </section>
            </main>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
                crossorigin="anonymous"></script>
            <script src="Storedata.js"></script>
    </body>

    </html>