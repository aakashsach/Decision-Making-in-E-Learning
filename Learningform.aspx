<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Learningform.aspx.cs" Inherits="Elearning.Learningform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <link rel="stylesheet" href="Learningform.css" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
    </style>
</head>
<body >
  <div class="container">  
      <form id="contact" runat="server">
    <h6 style="font-family: 'HP Simplified Light'; font-size: 30px; color: #003300; font-weight: 900;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong><em>Learning Style Assessment</em></strong></span></h6>
          <p>&nbsp;</p>
    <h4><strong>I understand something better after I
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">think it through</asp:ListItem>
        <asp:ListItem Value="2">try it out</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
   
    <h4><strong>I would rather be considered <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList2" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">realistic.</asp:ListItem>
        <asp:ListItem Value="2">innovative</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I think about what I did yesterday, I am most likely to get
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList3" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">a picture</asp:ListItem>
        <asp:ListItem Value="2">words.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I tend to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList4" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">understand details of a subject but may be fuzzy about its overall structure.</asp:ListItem>
        <asp:ListItem Value="2">understand the overall structure but may be fuzzy about details.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I am learning something new, it helps me to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList05" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList05" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">talk about it.</asp:ListItem>
        <asp:ListItem Value="2">think about it.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>If I were a teacher, I would rather teach a course
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList5" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">that deals with facts and real life situations.</asp:ListItem>
        <asp:ListItem Value="2">that deals with ideas and theories.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I prefer to get new information in
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList6" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">pictures, diagrams, graphs, or maps.</asp:ListItem>
        <asp:ListItem Value="2">written directions or verbal information.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>Once I understand
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList7" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">all the parts, I understand the whole thing.</asp:ListItem>
        <asp:ListItem Value="2">the whole thing, I see how the parts fit.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>In a study group working on difficult material, I am more likely to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList8" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">jump in and contribute ideas.</asp:ListItem>
        <asp:ListItem Value="2">sit back and listen.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I find it easier
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList9" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">to learn facts.</asp:ListItem>
        <asp:ListItem Value="2">to learn concepts.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>In a book with lots of pictures and charts, I am likely to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="RadioButtonList10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList10" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">look over the pictures and charts carefully.</asp:ListItem>
        <asp:ListItem Value="2">focus on the written text.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I solve math problems
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList11" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">I usually work my way to the solutions one step at a time.</asp:ListItem>
        <asp:ListItem Value="2">I often just see the solutions but then have to struggle to figure out the steps to get to them.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>In classes I have taken
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RadioButtonList12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList12" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">I have usually gotten to know many of the students.</asp:ListItem>
        <asp:ListItem Value="2">I have rarely got to know many of the students.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>In reading nonfiction, I prefer
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList13" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">something that teaches me new facts or tells me how to do something.</asp:ListItem>
        <asp:ListItem Value="2">something that gives me new ideas to think about.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I like teachers
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="RadioButtonList14" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList14" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">who put a lot of diagrams on the board.</asp:ListItem>
        <asp:ListItem Value="2">who spend a lot of time explaining.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I&#39;m analyzing a story or a novel
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="RadioButtonList15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList15" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">I think of the incidents and try to put them together to figure out the themes.</asp:ListItem>
        <asp:ListItem Value="2">I just know what the themes are when I finish reading and then I have to go back and find the incidents that demonstrate them.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I start a homework problem, I am more likely to <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="RadioButtonList16" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList16" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">start working on the solution immediately.</asp:ListItem>
        <asp:ListItem Value="2">try to fully understand the problem first.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I prefer the idea of
        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="RadioButtonList17" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList17" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">certainty.</asp:ListItem>
        <asp:ListItem Value="2">theory.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I remember best
        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="RadioButtonList18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList18" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">what I see.</asp:ListItem>
        <asp:ListItem Value="2">what I hear.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>It is more important to me that an instructor
        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="RadioButtonList19" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList19" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">lay out the material in clear sequential steps.</asp:ListItem>
        <asp:ListItem Value="2">give me an overall picture and relate the material to other</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I prefer to study
        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="RadioButtonList20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList20" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">in a study group.</asp:ListItem>
        <asp:ListItem Value="2">alone.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I am more likely to be considered
        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="RadioButtonList21" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList21" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">careful about the details of my work.</asp:ListItem>
        <asp:ListItem Value="2">creative about how to do my work.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I get directions to a new place, I prefer
        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="RadioButtonList22" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList22" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">a map.</asp:ListItem>
        <asp:ListItem Value="2">written instructions.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I learn
        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="RadioButtonList23" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList23" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">at a fairly regular pace. If I study hard, I&#39;ll &quot;get it.&quot;</asp:ListItem>
        <asp:ListItem Value="2">in fits and starts. I&#39;ll be totally confused and then suddenly it all &quot;clicks.&quot;</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I would rather first
        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="RadioButtonList24" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList24" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">try things out.</asp:ListItem>
        <asp:ListItem Value="2">think about how I&#39;m going to do it.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I am reading for enjoyment, I like writers to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="RadioButtonList25" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList25" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">clearly say what they mean.</asp:ListItem>
        <asp:ListItem Value="2">say things in creative, interesting ways.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I see a diagram or sketch in class, I am most likely to remember
        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="RadioButtonList26" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList26" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">the picture.</asp:ListItem>
        <asp:ListItem Value="2">what the instructor said about it.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When considering a body of information, I am more likely to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="RadioButtonList27" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList27" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">focus on details and miss the big picture.</asp:ListItem>
        <asp:ListItem Value="2">try to understand the big picture before getting into the details.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I more easily remember
        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="RadioButtonList28" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList28" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">something I have done.</asp:ListItem>
        <asp:ListItem Value="2">something I have thought a lot about.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I have to perform a task, I prefer to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="RadioButtonList29" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList29" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">master one way of doing it.</asp:ListItem>
        <asp:ListItem Value="2">come up with new ways of doing it.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When someone is showing me data, I prefer
        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="RadioButtonList30" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList30" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">charts or graphs.</asp:ListItem>
        <asp:ListItem Value="2">text summarizing the results.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When writing a paper, I am more likely to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="RadioButtonList31" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList31" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">work on (think about or write) the beginning of the paper and progress forward.</asp:ListItem>
        <asp:ListItem Value="2">work on (think about or write) different parts of the paper and then order them.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I have to work on a group project, I first want to <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="RadioButtonList32" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList32" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">have &quot;group brainstorming&quot; where everyone contributes ideas.</asp:ListItem>
        <asp:ListItem Value="2">brainstorm individually and then come together as a group to compare ideas.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I consider it higher praise to call someone
        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="RadioButtonList33" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList33" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">sensible.</asp:ListItem>
        <asp:ListItem Value="2">imaginative.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I meet people at a party, I am more likely to remember
        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="RadioButtonList34" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList34" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">what they looked like.</asp:ListItem>
        <asp:ListItem Value="2">what they said about themselves.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I am learning a new subject, I prefer to
        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="RadioButtonList35" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList35" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">stay focused on that subject, learning as much about it as I can.</asp:ListItem>
        <asp:ListItem Value="2">try to make connections between that subject and related subjects.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I am more likely to be considered
        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="RadioButtonList36" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong><asp:RadioButtonList ID="RadioButtonList36" runat="server" ForeColor="Black">
        <asp:ListItem Value="1">outgoing.</asp:ListItem>
        <asp:ListItem Value="2">reserved.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I prefer courses that emphasize 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="RadioButtonList37" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList37" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">concrete material (facts, data).</asp:ListItem>
            <asp:ListItem Value="2">abstract material (concepts, theories).</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>For entertainment, I would rather 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="RadioButtonList38" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList38" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">watch television.</asp:ListItem>
            <asp:ListItem Value="2">read a book.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>Some teachers start their lectures with an outline of what they will cover. Such outlines are 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="RadioButtonList39" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList39" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">somewhat helpful to me.</asp:ListItem>
            <asp:ListItem Value="2">very helpful to me.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>The idea of doing homework in groups, with one grade for the entire group, 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="RadioButtonList40" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList40" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">appeals to me.</asp:ListItem>
            <asp:ListItem Value="2">does not appeal to me.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When I am doing long calculations, 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="RadioButtonList41" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList41" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">I tend to repeat all my steps and check my work carefully.</asp:ListItem>
            <asp:ListItem Value="2">I find checking my work tiresome and have to force myself to do it.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>I tend to picture places I have been 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="RadioButtonList42" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList42" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">easily and fairly accurately.</asp:ListItem>
            <asp:ListItem Value="2">with difficulty and without much detail.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    <h4><strong>When solving problems in a group, I would be more likely to 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="RadioButtonList43" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</strong><asp:RadioButtonList ID="RadioButtonList43" runat="server" ForeColor="Black">
            <asp:ListItem Value="1">think of the steps in the solution process.</asp:ListItem>
            <asp:ListItem Value="2">think of possible consequences or applications of the solution in a wide range of areas.</asp:ListItem>
        </asp:RadioButtonList>
          </h4>
    &nbsp;<fieldset>
              <asp:Button ID="Button1" runat="server" BackColor="#006600" ForeColor="White" Height="35px" Text="Submit" Width="100%" OnClick="Button1_Click" />
    </fieldset>
      </form>
</div>
</body>
</html>
