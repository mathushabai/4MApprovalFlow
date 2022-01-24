<%@ Page Title="Create Template" Language="C#" MasterPageFile="~/Layout/Site1.Master" AutoEventWireup="true" CodeBehind="CreateTemplate.aspx.cs" Inherits="WorkflowApprovalSystem.Layout.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    <section id="page-title">
        <a class="header" style="left:14%">Template Form</a>

    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <div class="wrapper">   
            <button type="button" id="inactiveBtn" class="btn btn-light createMode" disabled><i class="fas fa-plus-circle icons pr-3"></i>Create Mode</button> 
            <button type="button" id="activeBtn" class="btn btn-warning editMode"><i class="far fa-edit icons pr-3" aria-hidden="true"></i>Edit Mode</button>         
        
            <script type="text/javascript">
                document.getElementById("activeBtn").onclick = function () {
                    location.href = "EditTemplate.aspx";
                };
            </script>
        </div>
        <form method="post" action="template.asp">
                <div class="template-table">
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="templateInput" id="templateLbl">Checklist Template Name</label>
                        <input type="text" class="form-control" id="templateInput" name="templateInput" placeholder="Enter template name..."/>
                    </div>    
                    <div style="margin-top:40px;">
                        <table class="table" id="form-table">
                          <thead class="thead-light">
                            <tr style="text-align:center;">
                              <th scope="col" style="width:30px;"></th>
                              <th scope="col">Sequence</th>
                              <th scope="col" style="width:536px;">Task Description</th>
                              <th scope="col">Approver</th>
                              <th scope="col" style="width:168px;">Minimum Approvals</th>
                              <th scope="col" style="width:168px;">Number of Days</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row"><label for="levelInput" id="levelName">Level</label></th>
                              <td colspan="2"><input type="text" class="form-control" id="levelInput" name="levelName" placeholder="Enter level activity..."/></td>
                            </tr>
                            <tr>
                              <th scope="row"> </th>
                              <td class="seq">1</td>
                              <td><input type="text" class="form-control" id="taskDesc" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel" min="1" max="100" value="1"></td>
                            </tr>
                            <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">2</td>
                              <td><input type="text" class="form-control" id="taskDesc1" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel1" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel1" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">3</td>
                              <td><input type="text" class="form-control" id="taskDesc2" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel2" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel2" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">4</td>
                              <td><input type="text" class="form-control" id="taskDesc3" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel3" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel3" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">5</td>
                              <td><input type="text" class="form-control" id="taskDesc4" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel4" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel4" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"> </th>
                              <td style="height:70px;"><type="button" class="btn-floating btn-add" style="padding: 12px 12px 9px 12px;"><i class="fas fa-plus" aria-hidden="true"></i></td>
                            </tr>
                              <tr>
                              <th scope="row"><label for="levelInput1" id="levelName1">Level</label></th>
                              <td colspan="2"><input type="text" class="form-control" id="levelInput1" name="levelName" placeholder="Enter level activity..."/></td>
                              </tr>
                            <tr>
                              <th scope="row"> </th>
                              <td class="seq">1</td>
                              <td><input type="text" class="form-control" id="taskDesc20" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel20" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel20" min="1" max="100" value="1"></td>
                            </tr>
                            <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">2</td>
                              <td><input type="text" class="form-control" id="taskDesc21" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel21" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel21" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">3</td>
                              <td><input type="text" class="form-control" id="taskDesc22" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel22" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel22" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">4</td>
                              <td><input type="text" class="form-control" id="taskDesc23" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel23" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel23" min="1" max="100" value="1"></td>
                            </tr>
                              <tr>
                              <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                              <td class="seq">5</td>
                              <td><input type="text" class="form-control" id="taskDesc24" name="taskDesc" placeholder="Enter task description..."/></td>
                              <td style="width:150px;"><img src="/Layout/res/user.png" alt="User" height="40" width="40" /></td>
                              <td><input type="number" class="form-control" name="numSel" id="numSel24" min="1" max="100" value="1"></td>
                              <td><input type="number" class="form-control" name="daySel" id="daySel24" min="1" max="100" value="1"></td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>
            <div class="button-container">
                <button type="button" class="btn btn-success" id="saveBtn">Save & Proceed</button> 
                <button type="button" class="btn btn-primary" id="nextLvlBtn">Add New Level<i class="fas fa-plus" id="addIcon" aria-hidden="true"></i></button>
            </div>
        </form>
    </section>
</asp:Content>
