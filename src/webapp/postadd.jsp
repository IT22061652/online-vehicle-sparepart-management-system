<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form enctype="multipart/form-data" action="<%= request.getContextPath() %>/postadd" method="post">
			
  	<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sid</label>
				<input type="text" name="sid" placeholder="Category"
					
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Title</label>
				<input type="text" name="titles" placeholder="Category"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">s


				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Category</label>
				<input type="text" name="category" placeholder="Category"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Description</label>
				<textarea rows="" cols="" name="desc"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></textarea>

				

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Quantity</label>
				<input type="text" name="quantity" placeholder="quantity"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Price</label>
				<input type="text" name="price" placeholder="Price"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">




				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Main
					Item Image</label> <input type="file" name="image"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				

				<input type="submit" value="Post Ad"
					class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none cursor-pointer mt-12 focus:shadow-outline transition duration-150 ease-in-out">

			</div>
		</form>







</body>
</html>