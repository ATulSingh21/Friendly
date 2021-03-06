<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>

<html>
   <head>
      <title>JSTL x:if Tags</title>
   </head>

   <body>
      <h3>Books Info:</h3>

      <c:set var = "xmltext">
         <books>
            <book>
               <name>Padam History</name>
               <author>ZARA</author>
               <price>100</price>
            </book>
               
            <book>
               <name>Great Mistry</name>
               <author>NUHA</author>
               <price>2000</price>
            </book>
         </books>
      </c:set>

      <x:parse xml = "${xmltext}" var = "output"/>
      <x:choose>
      <x:when select="$output//book/name='Padam History'">
      <h5>Book author is Padam History and its price is 100</h5>
      </x:when>
      <x:when select="$output//book/name='Greatest Mistry'">
      <h5>Book author is Greatest Mistry and its price is 2000</h5>
      </x:when>
      <x:otherwise><h2>Please choose the correct book</h2></x:otherwise>
      </x:choose>

   </body>
</html>