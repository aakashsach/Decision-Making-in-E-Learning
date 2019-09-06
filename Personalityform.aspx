<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personalityform.aspx.cs" Inherits="Elearning.Personalityform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link rel="stylesheet" href="Personalityform.css" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            font-size: small;
        }
    </style>
</head>
<body >
  <div class="container">  
      <form id="contact" runat="server">
    <h6 style="font-family: 'HP Simplified Light'; font-size: 30px; color: #003300; font-weight: 900;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personality&nbsp;Assessment</em></strong></span></h6>
          <b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(81, 148, 196); text-decoration-style: initial; text-decoration-color: initial;">
          <p>
              <b><span class="auto-style2">Directions:</span></b><span><span class="auto-style2">&nbsp;</span></span><span class="auto-style2">The following statements concern your perception about yourself in a variety of situations. Your task is to indicate the strength of your agreement with each statement, utilizing a scale in which 1 denotes strong disagreement, 5 denotes strong agreement, and 2, 3, and 4 represent intermediate judgments. In the boxes after each statement, click a number from 1 to 5 from the following scale:</p>
          <blockquote>
              <ol>
                  <li><b>Strongly disagree</b></li>
                  <li><b>Disagree</b></li>
                  <li><b>Neither disagree nor agree</b></li>
                  <li><b>Agree</b></li>
                  <li></span><b><span class="auto-style2">Strongly agree</span></b></li>
              </ol>
          </blockquote>
          </b><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(81, 148, 196); text-decoration-style: initial; text-decoration-color: initial;"><span class="auto-style2"><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background-color: #FFFFFF;">There are no &quot;right&quot; or &quot;wrong&quot; answers, so select the number that most closely reflects you on 
          each statetment. Take your time and consider each statement carefully. Once you have completed all questions click &quot;Submit&quot; at the bottom.</b></span></b><p>&nbsp;</p>
    <h4><strong>I am the life of the party.<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I feel little concern for others.<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList2" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I am always prepared.<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList3" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I get stressed out easily.<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList4" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Have a rich vocabulary.<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList5" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Don't talk a lot.<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList6" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Am interested in people.<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList7" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Leave my belongings around.<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList8" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Am relaxed most of the time.<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList9" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Have difficulty understanding abstract ideas.<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList10" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Feel comfortable around people..<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="RadioButtonList11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList11" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Insult people.<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList12" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Pay attention to details.<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RadioButtonList13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList13" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Worry about things.<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList14" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList14" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Have a vivid imagination.<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="RadioButtonList15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList15" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Keep in the background.<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="RadioButtonList16" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList16" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
           <h4><strong>I Sympathize with others' feelings.<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="RadioButtonList17" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList17" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                <h4><strong>I Make a mess of things.<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="RadioButtonList18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList18" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                <h4><strong>I Seldom feel blue.<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="RadioButtonList19" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList19" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                <h4><strong>I Am not interested in abstract ideas..<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="RadioButtonList20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList20" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                <h4><strong>I Start conversations.<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="RadioButtonList21" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList21" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                <h4><strong>I Am not interested in other people's problems.<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="RadioButtonList22" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList22" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                <h4><strong>I Get chores done right away.<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="RadioButtonList23" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList23" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>

                     <h4><strong>I Am easily disturbed.<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="RadioButtonList24" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList24" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                     <h4><strong>I Have excellent ideas.<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="RadioButtonList25" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList25" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                     <h4><strong>I Have little to say.<asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="RadioButtonList26" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList26" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                     <h4><strong>I Have a soft heart.<asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="RadioButtonList27" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList27" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                     <h4><strong>I Often forget to put things back in their proper place.<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="RadioButtonList28" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList28" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                          <h4><strong>I Get upset easily.<asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="RadioButtonList29" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList29" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                          <h4><strong>I Do not have a good imagination.<asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="RadioButtonList30" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList30" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                          <h4><strong>I Talk to a lot of different people at parties..<asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="RadioButtonList31" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList31" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                          <h4><strong>I Am not really interested in others.<asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="RadioButtonList32" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList32" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                          <h4><strong>I Like order.<asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="RadioButtonList33" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList33" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                               <h4><strong>I Change my mood a lot.<asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="RadioButtonList34" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList34" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                               <h4><strong>I Am quick to understand things.<asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="RadioButtonList35" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList35" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                               <h4><strong>I Don't like to draw attention to myself.<asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="RadioButtonList36" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList36" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
                               <h4><strong>I Take time out for others.<asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="RadioButtonList37" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList37" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Shirk my duties.<asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="RadioButtonList38" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList38" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Have frequent mood swings.<asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="RadioButtonList39" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList39" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Use difficult words.<asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="RadioButtonList40" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList40" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Don't mind being the center of attention.<asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="RadioButtonList41" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList41" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Feel others' emotions.<asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="RadioButtonList42" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList42" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Follow a schedule.<asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="RadioButtonList43" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList43" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Get irritated easily.<asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="RadioButtonList44" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList44" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Spend time reflecting on things.<asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ControlToValidate="RadioButtonList45" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList45" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Am quiet around strangers.<asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ControlToValidate="RadioButtonList46" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList46" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Make people feel at ease.<asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ControlToValidate="RadioButtonList47" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList47" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Am exacting in my work.<asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ControlToValidate="RadioButtonList48" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList48" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Often feel blue.<asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" ControlToValidate="RadioButtonList49" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList49" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>
            <h4><strong>I Am full of ideas.<asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ControlToValidate="RadioButtonList50" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList50" runat="server" ForeColor="Black" RepeatDirection="Horizontal">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
        </asp:RadioButtonList>
          </h4>

          
         
    
     &nbsp;<fieldset>
              <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" BackColor="#006600" ForeColor="White" Height="35px" Text="Submit" Width="100%"  />
    </fieldset>
      </form>
</div>
</body>
</html>
