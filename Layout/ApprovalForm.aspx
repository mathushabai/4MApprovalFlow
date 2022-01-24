<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/Site1.Master" AutoEventWireup="true" CodeBehind="ApprovalForm.aspx.cs" Inherits="WorkflowApprovalSystem.Layout.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    <a class="header" style="margin-left:5px; color:black;">Approval Form</a>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <div class="updates-container">
            <a class="cont-header">Current Level</a>
            <a class="checked green"> <i class="fas fa-check" aria-hidden="true"></i> </a>
            <a class="checked green"> <i class="fas fa-check" aria-hidden="true"></i> </a>
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
            <a class="appr-header">Sequence</a>
        </div>
      
    </section>
</asp:Content>
