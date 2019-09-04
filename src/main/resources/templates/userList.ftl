<#import "parts/common.ftl" as c>

<@c.page>

       <h2>List Users</h2>
    <div class="table-responsive">
        <table class="table table-striped table-sm" >
            <thead>
            <tr>
                <th>Id</th>
                <th> Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Button</th>

            </tr>
            </thead>
            <tbody>

             <#list users as user>
             <tr>
                 <td>${user.id}</td>
                 <td>${user.username}</td>
                 <td>${user.email}</td>
                 <td><#list user.roles as role>${role}<#sep>, </#list></td>
                 <td><a href="/user/${user.id}">edit</a></td>
             </tr>
             </#list>

            </tbody>
        </table>
    </div>



    </tbody>
</@c.page>
