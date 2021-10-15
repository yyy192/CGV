<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="subus">
   <h4><span class="icon-bus"></span>교통안내</h4>
   <p>${dto.subway}</p>
</div>

<div class="carp">
   <h4><span class="icon-parking"></span>주차안내</h4>
   <p>${dto.parking}</p>
</div>