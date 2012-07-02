<style>
#description_competition_ex_py{
    background-color: #A2A2A2;
    float: left;
    height: 353px;
    line-height: 13px;
    overflow: auto;
    width: 375px;
    border: 1px solid #FFFFFF;
}
.artwork_show {
    border: 1px solid;
    float: left;
    height: 352px;
    line-height: 13px;
    position: relative;
    width: auto;
}
</style>
<div id="specific_menu" >
<%if  @pramoting_stuff%>
	<%for pramotingstuff in @pramoting_stuff%>
		<div id="promo_top">
			<div class="content">
				<h2>
					<%if  pramotingstuff.link.blank?%>
					<div class="pramotion_heading" >
					     <p><%= pramotingstuff.title %></p>
					 </div>    
					<%else%>
						<%if  pramotingstuff.link == "http://"%>
						<div class="pramotion_heading" >
						<%= pramotingstuff.title %>
						</div>
						<%else%>
						<a href="<%=pramotingstuff.link%>" target="_blank" style="color:#B0171F">
						<%=  pramotingstuff.title %>
						</a>
						<%end%>
					<%end%>
					</h2>&nbsp<br/>
					<p><%=pramotingstuff.description%>
					</p>
			</div>  
		</div>
	  <%end%>
<%end%>
</div> <%#specifiv menu ends here%>









</div>

<div id="container">
 
    <%if logged_in?%>
             <div id="description_competition">
                <div id="content">
                <font size="5" color="white"><b>
                  <%=current_user.profile.first_name + "  " + current_user.profile.last_name%></b></font>
                  <br/><br/><br/>
                  <font size="1" color="white"><b>
                    Competition Entered
                  </b></font>
                  <br>
                  <font  color="white">
                      <%if @competitionuserenteredlist%>
                      <%for competitionlist in @competitionuserenteredlist%>
                          <a href="/competitions/<%=competitionlist.competition_id%>"><%=competitionlist.competition.title%></a>
                          <br/>
                      <%end%>
                      <%end%>
                  </font>
                  <br/><br/><br/>
                  <font size="1" color="white"><b>
                    Exhibition Entered
                  </b></font>
                  <br>
                  <font  color="white">
                      <%if !@exhibitionuserlist.blank?%>
                         <%for eu in @exhibitionuserlist%>
                              <%=eu.exhibition.title%> 
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <% if    !eu.user.invoices.blank?  and(  (eu.user.invoices.find(:first ,:conditions=>["purchasable_id = ? ",eu.id]) != nil and   eu.user.invoices.find(:first ,:conditions=>["purchasable_id = ? ",eu.id]).state != "validated") or (eu.user.invoices.find(:last ,:conditions=>["purchasable_id = ? ",eu.id]) != nil and   eu.user.invoices.find(:last ,:conditions=>["purchasable_id = ? ",eu.id]).state != "validated")) %>
            <%#= link_to_remote('Pay online', :url => new_admin_payment_url(:iid => @current_object.id), :update => 'modal_space', :method => :get)  %>
            <%=link_to_remote "Pay Online", :url=>"/admin/profiles/exhibition_payment_front/#{eu.id}",:update => 'modal_space', :method => :get%>
          <%end%> 
                             <br/>
                         <%end%>
                      <%end%>
                  </font>
                </div><%#content div ends%>
             </div><%#description_competition div ends%>   
             
            <%for  frontendpics in @useruploadedpics%>
              <div id="iteam_image">
              <img src="/system/gallery/<%=frontendpics%>" alt="Not Found" height="352" width="600"/>
            </div>
          <%end%>   

    <%else%> 
      <%for  frontendpics in @front_image%>
        <div id="iteam_image">
        <img src="/system/front_end_pics/<%=frontendpics.id%>/large/<%=frontendpics.front_end_pics_file_name%>" alt="Not Found" height="352" width="600"/>
        </div>
     <%end%> 
    <%end%>
                    <div id="description_competition_ex_py" style="display:none">
                      <div id="content">
                        <div id="enterintocompetitionfront" >
                        </div>  
                      </div>
                    </div><%#description_competition ended%>
                    
  <div id="list" > 
     <form action="add_the_artwork_to_competition" METHOD="POST" enctype=multipart/form-data>  
      <div id="iteam_image0" style="display:none" class="artwork_show">
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork0" style="display:none">  

                       </div>
                  </div>
                </div>    
      </div>          
       <div id="iteam_image1" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork1" style="display:none"> 

                       </div>
                  </div>
                </div>    
       </div>         
       <div id="iteam_image2" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork2" style="display:none"> 
                       </div>
                  </div>
                </div>    
       </div>         
       <div id="iteam_image3" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork3" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
       <div id="iteam_image4" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork4" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
       
       <div id="iteam_image5" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork5" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
       
       <div id="iteam_image6" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork6" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
       
       
       <div id="iteam_image7" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork7" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
       
       
       <div id="iteam_image8" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork8" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
       
       
       <div id="iteam_image9" style="display:none" class="artwork_show">  
                <div id="description_competition">
                  <div id="content">
                       <div id="add_the_artwork9" style="display:none"> 
                       </div>
                  </div>
                </div>  
       </div>           
         </form>  
    </div>  



                    
    </div> 



