<%@ Page Title="Edit Template" Language="C#" MasterPageFile="~/Layout/Site1.Master" AutoEventWireup="true" CodeBehind="EditTemplate.aspx.cs" Inherits="WorkflowApprovalSystem.Layout.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    <section id="page-title">
        <a class="header">Checklist Template Form</a> 
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <div class="wrapper"">
            <button type="button" id="activeBtn" class="btn btn-success createMode"><i class="fas fa-plus-circle icons pr-3" aria-hidden="true"></i>Create Mode</button>
            <button type="button" id="inactiveBtn" class="btn btn-light editMode" disabled><i class="far fa-edit icons pr-3" ></i>Edit Mode</button>    
            
            <script type="text/javascript">
                document.getElementById("activeBtn").onclick = function () {
                    location.href = "CreateTemplate.aspx";
                };
            </script>
            <a class="editKey"><img src="/Layout/res/required-user.png" width="25" height="25" style="margin-right:10px;"/>Required Approver 
            <img src="/Layout/res/backup-user.png" width="25" height="25" style="margin-right:10px; margin-left:30px;"/>Backup Approver</a>      
        </div>
        <form method="post" action="template.asp">
            <div class="template-table">
                <div class="form-group mx-sm-3 mb-2">
                    <label for="templateInput" id="templateLbl">Search Template</label>
                    <input type="text" class="form-control" id="templateInput" name="templateSearch" placeholder="Search for template..."/>
                    <img src="/Layout/res/filter.png" width="25" height="30" style="margin-left:20px;"/>
                </div>    
                
                <div style="margin-top:40px;">
                    <table class="table" id="form-table">
                      <thead class="thead-light">
                        <tr style="text-align:center;">
                            <th scope="col" style="width:30px;"></th>
                            <th scope="col">Sequence</th>
                            <th scope="col" style="width:490px;">Task Description</th>
                            <th scope="col">Approver</th>
                            <th scope="col" style="width:168px;">Minimum Approvals</th>
                            <th scope="col" style="width:168px;">Number of Days</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row"><label for="levelInput" id="levelName">Level</label></th>
                          <td colspan="2"><input type="text" class="form-control" id="levelInput" name="levelName" value="Finalizing Documentation"/></td>
                        </tr>
                        <tr>
                          <th scope="row"> </th>
                          <td class="seq">1</td>
                          <td><input type="text" class="form-control" id="taskDesc" name="taskDesc" value="Receive All Product Documentation from Customer"/></td>
                          <td class="user-group" id="userpopup">
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                          </td>
                          <td><input type="number" class="form-control" name="numSel" id="numSel" min="1" max="100" value="4"></td>
                          <td><input type="number" class="form-control" name="daySel" id="daySel" min="1" max="100" value="5"></td>
                        </tr>
                        <tr>
                          <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                          <td class="seq">2</td>
                          <td><input type="text" class="form-control" id="taskDesc2" name="taskDesc" value="BOM"/></td>
                          <td class="user-group">
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                          </td>
                          <td><input type="number" class="form-control" name="numSel" id="numSel1" min="1" max="100" value="3"></td>
                          <td><input type="number" class="form-control" name="daySel" id="daySel1" min="1" max="100" value="5"></td>
                        </tr>
                          <tr>
                          <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                          <td class="seq">3</td>
                          <td><input type="text" class="form-control" id="taskDesc3" name="taskDesc" value="ASSY Drawing" /></td>
                          <td class="user-group">
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                          </td>
                          <td><input type="number" class="form-control" name="numSel" id="numSel2" min="1" max="100" value="2"></td>
                          <td><input type="number" class="form-control" name="daySel" id="daySel2" min="1" max="100" value="6"></td>
                        </tr>
                          <tr>
                          <th scope="row"> </th>
                          <td style="height:70px;"><type="button" class="btn-floating btn-add" style="padding: 12px 12px 9px 12px;"><i class="fas fa-plus" aria-hidden="true"></i></td>
                        </tr>
                          <tr>
                          <th scope="row"><label for="levelInput1" id="levelName1">Level</label></th>
                          <td colspan="2"><input type="text" class="form-control" id="levelInput1" name="levelName" value="Submission of Drawing"/></td>
                        </tr>
                        <tr>
                          <th scope="row"> </th>
                          <td class="seq">1</td>
                          <td><input type="text" class="form-control" id="taskDesc20" name="taskDesc" value="Conformal Coating Drawing" /></td>
                          <td class="user-group">
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                          </td>
                          <td><input type="number" class="form-control" name="numSel" id="numSel3" min="1" max="100" value="4"></td>
                          <td><input type="number" class="form-control" name="daySel" id="daySel3" min="1" max="100" value="8"></td>
                        </tr>
                        <tr>
                          <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                          <td class="seq">2</td>
                          <td><input type="text" class="form-control" id="taskDesc21" name="taskDesc" value="Potting Drawing" /></td>
                          <td class="user-group">
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                          </td>
                          <td><input type="number" class="form-control" name="numSel" id="numSel4" min="1" max="100" value="3"></td>
                          <td><input type="number" class="form-control" name="daySel" id="daySel4" min="1" max="100" value="5"></td>
                        </tr>
                          <tr>
                          <th scope="row"><type="button" class="btn-floating btn-del m-4"><i class="fas fa-times" aria-hidden="true"></i></th>
                          <td class="seq">3</td>
                          <td><input type="text" class="form-control" id="taskDesc22" name="taskDesc" value="Schematic Drawing" /></td>
                          <td class="user-group">
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/blue-user.png" alt="User" height="30" width="30" />
                                <img src="/Layout/res/purple-user.png" alt="User" height="30" width="30" />
                          </td>
                          <td><input type="number" class="form-control" name="numSel" id="numSel5" min="1" max="100" value="1"></td>
                          <td><input type="number" class="form-control" name="daySel" id="daySel5" min="1" max="100" value="3"></td>
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
