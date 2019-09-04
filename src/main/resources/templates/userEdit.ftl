<#import "parts/common.ftl" as c>

<@c.page>
User editor

<form action="/user" method="post">


    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User Name:</label>
        <div class="col-sm-3">
            <input type="text" name="username" class="form-control" value="${user.username}">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User Role:</label>
    <#list roles as role>
   <div class="col-sm-2">
       <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
       </label>
   </div>
    </#list>
    </div>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button class="btn btn-primary" type="submit">Save</button>
</form>
</@c.page>
