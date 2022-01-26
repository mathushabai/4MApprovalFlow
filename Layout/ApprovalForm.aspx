<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Site1.Master" AutoEventWireup="true" CodeBehind="ApprovalForm.aspx.cs" Inherits="WorkflowApprovalSystem.Layout.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    <a class="header" style="margin-left:5px; color:black;">Approval Form</a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <div class="updates-container">
            <a class="cont-header">Current Level</a>
            <a class="checked"> <i class="fas fa-check" aria-hidden="true"></i> </a>
            <a class="checked"> <i class="fas fa-check" aria-hidden="true"></i> </a>
            <a class="in-progress"> 3 </a>
            <a class="incomplete">4</a>
            <a class="incomplete">5</a>
        </div>
        <div class="container-bg">
            <a class="approvalKey">
                <img src="/Layout/res/unapproved-user.png" width="35" height="35" style="margin-left:60px;"/> Not approved
                <img src="/Layout/res/approved-user.png" width="35" height="35" /> Approved
                <img src="/Layout/res/onhold-user.png" width="35" height="35" /> On Hold
            </a>
            <table class="table-appr">
                <tr>
                    <td class="seq-appr">
                        Sequence
                    </td>
                    <td class="icon-appr">
                        <a class="checked"> <i class="fas fa-check" aria-hidden="true"></i> </a>
                    </td>
                    <td class="item-appr">
                        Test Plan
                    </td>
                    <td class="user-group">
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                    </td>
                </tr>
                <tr>
                    <td> </td>
                    <td class="icon-appr">
                        <a class="in-progress">2</a>
                    </td>
                    <td class="item-appr">
                        Engineering Sample Board Received
                    </td>
                    <td class="user-group">
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/approved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/onhold-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                    </td>
                </tr>
                <tr>
                    <td> </td>
                    <td class="icon-appr">
                        <a class="incomplete">3</a>
                    </td>
                    <td class="item-appr">
                        Receive DFM Report
                    </td>
                    <td class="user-group">
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                        <img src="/Layout/res/unapproved-user.png" alt="User" height="30" width="30" />
                    </td>
                </tr>
            </table>
            <div class="margin-border"></div>
            <table class="remark-table">
                <tr class="remark-row">
                    <td>
                        First Remark
                    </td>
                    <td>
                        Second Remark
                    </td>
                    <td>
                        Third Remark
                    </td>
                </tr>
                <tr>
                    <td>
                        <a class="attach">View Attachment </a>
                    </td>
                    <td>
                        <a class="attach">View Attachment </a>
                    </td>
                    <td>
                        <a class="attach">View Attachment </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                    </td>
                    <td>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                    </td>
                    <td>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                    </td>
                </tr>
            </table>
            <div class="margin-border"></div>
            <div>
                <a class="days-head">Days left:</a>
                <a class="days-rem"> 3 days</a>
            </div>
            
            <form method="post" action="template.asp">

                <div class="form-group mx-sm-3 mb-2">
                    <label for="attachUpload" id="attach-label">Upload attachment:</label>
                    <a class="btn btn-light" id="attachUpload">Choose files..</a>
                </div>

                <div class="form-remarks">
                    <label for="remarks" id="remarksLbl">Remarks:</label>
                    <div class="summernote" id="remarks"></div>
                </div>
            </form>
        </div>
        <div class="button-container">
            <button type="button" class="btn btn-warning" id="onHoldBtn">On Hold<i class="far fa-clock" id="onHoldIcon"></i></button> 
            <button type="button" class="btn btn-success" id="approveBtn">Approve<i class="far fa-check-circle" id="approveIcon"></i></button>
        </div>
        <script>
            $('.summernote').summernote({
                placeholder: 'Enter remarks...',
                tabsize: 2,
                width: 500,
                height: 100,
            });
        </script>
    </section>
</asp:Content>
