 require 'rubygems'
 require 'nokogiri'
class Admin::NewslettersController < ApplicationController
  # GET /admin_newsletters
  # GET /admin_newsletters.xml
  layout "gallery_promoting"
 
  def index
    @newsletters = Newsletter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_newsletters }
    end
  end

  # GET /admin_newsletters/1
  # GET /admin_newsletters/1.xml
  def show
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newsletter }
    end
  end

  # GET /admin_newsletters/new
  # GET /admin_newsletters/new.xml
  def new
    @newsletter = Newsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newsletter }
    end
  end

  # GET /admin_newsletters/1/edit
  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  # POST /admin_newsletters
  # POST /admin_newsletters.xml
  def create
    @newsletter = Newsletter.new(params[:newsletter])
    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to("/admin/newsletters/"+@newsletter.id.to_s, :notice => 'Newsletter was successfully created.') }
        format.xml  { render :xml => @newsletter, :status => :created, :location => @newsletter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newsletter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin_newsletters/1
  # PUT /admin_newsletters/1.xml
  def update
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      if @newsletter.update_attributes(params[:newsletter])
        format.html { redirect_to(@newsletter, :notice => 'Admin::Newsletter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newsletter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_newsletters/1
  # DELETE /admin_newsletters/1.xml
  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy

    respond_to do |format|
      format.html { redirect_to(admin_newsletters_url) }
      format.xml  { head :ok }
    end
  end
  
  def send_news_letter
    params[:categoryid].split(",").each do |cid|
       prfilecategory = ProfilesCategory.find(:all,:conditions=>["category_id = ?",cid])
        prfilecategory.each do |prct|
          newlem = Newsletteremail.new
          newlem.user_id = prct.profile.user.id
          newlem.newsletter_id = params[:newsletter]
          newlem.save
        end
    end
    #in future i think i need to call this method by cron tab but currently as discussed with amit sir im sending email  immedietly
    send_news_letter_category_wise
    flash[:notice] = "Email Sent To Users"
    redirect_to "/admin/profiles"
  end
  def send_news_letter_category_wise
       nlm = Newsletteremail.find(:all,:conditions=>["emailsend is null"])
       for nl in nlm
         begin
         nlc=nl.newsletter.news_letter_content
          doc = Nokogiri::HTML(nlc)
          doc.xpath('//img').each do |node|
            cip= node.get_attribute('src')
            #i am putting a condition here if its from bsg server src then dont change it
            if cip.to_s.include?(".com")
            else 
            node.set_attribute('src',"http://#{request.host_with_port}/"+cip)
            end 
          end
          email= UserMailer.create_send_emailnewsletter(nl.newsletter.title,doc.to_html,nl.user)
          UserMailer.deliver(email)
         rescue
         end  
         nl.emailsend = true
         nl.save
       end
   #    render :nothing=>true 
  end
  
   
def send_news_letter_of_all_email
          a="redbrickgallery@gmail.com
mark@brunswickstreetgallery.com.au
kedar.pathak@pragtech.co.in
mark@bsgart.com.au
markj@graphica21.com
jo@brunswickstreetgallery.com.au
nalderma@bigpond.net.au
darling@bigpond.net.au
slossie@wideband.net.au
missdownes77@hotmail.com
sheridan.blunt@optusnet.com.au
jostein@saethern.net
asign@alphalink.com.au
fatman1j@yahoo.com.au
kylieandphil@iprimus.com.au
lorette@aapt.net.au
mstrofalis@hotmail.com
info@warwickbaker.com.au
genau@mikka.net.au
pedigreepaper@kwdoggett.com.au
bs@cinesaint.com
sn_harper@yahoo.com.au
vjkesh@yahoo.com.au
gabriellealexander_art@yahoo.com.au
lynton@lyntonallan.com
zoeamor@hotmail.com
ariccardo@aol.com
ayelet@matrixdesign.com.au
studio@georgiana-archer.com
ang@bagiotas.com
debbainking@yahoo.com.au
froilanbalais@hotmail.com
funkfuel@hotmail.com
j.staughton@starch.com.au
ninasartway@hotmail.com
don@clancyfineart.com
beattiea@mxnet.com.au
burntime@netspace.net.au
bayside@leadernewspapers.com.au
pakenham@leadernewspapers.com.au
brimbank@leadernewspapers.com.au
cranbourne@leadernewspapers.com.au
diamondvalley@leadernewspapers.com.au
frankston@leadernewspapers.com.au
freepress@leadernewspapers.com.au
heidelberg@leadernewspapers.com.au
hume@leadernewspapers.com.au
lilydale@leadernewspapers.com.au
manningham@leadernewspapers.com.au
maroondah@leadernewspapers.com.au
melbourne@leadernewspapers.com.au
melton@leadernewspapers.com.au
mooneevalley@leadernewspapers.com.au
moorabbin@leadernewspapers.com.au
mordialloc.chelsea@leadernewspapers.com.au
moreland@leadernewspapers.com.au
mornington@leadernewspapers.com.au
northcote@leadernewspapers.com.au
oakleigh.monash@leadernewspapers.com.au
preston@leadernewspapers.com.au
progress@leadernewspapers.com.au
stonnington@leadernewspapers.com.au
sunbury@leadernewspapers.com.au
waverley@leadernewspapers.com.au
whitehorse@leadernewspapers.com.au
whittlesea@leadernewspapers.com.au
megan.holmes@svhm.org.au
soula@ooi.com.au
omnicultureliss@yahoo.com
lyttletongallery@ains.net.au
contact@chrisbeaumont.com
kay@kayblythe.com
catartist88@hotmail.com
info@dibresciani.com
kerrybl@graffiti.net
alicebbyrne@hotmail.com
belinda@mason-lovering.com.au
johncarlin@myplace.net.au
sadiec@ozemail.com.au
icons@bigpond.com
info@petaclancy.com
amdc@optusnet.com.au
contact@nightwing.com.au
garnickp@optushome.com.au
newmarsbar@lycos.com
daryl2@ozemail.com.au
wendy@curriephotography.com
kedar.pathak@pragtech.co.in
tali@talidalton.com
amber@artasis.com.au
giznad@ozemail.com.au
strazz1@bigpond.com
tdelov@bigpond.net.au
dennis.gnotuk@bigpond.com
kimjulie@dcsi.net.au
dewmail@alphalink.com.au
clivedickson@hotmail.com
hairyarsedsculptor@yahoo.com.au
info@uberart.com.au
info@hazeldooney.com
dfjc@mail.com
palomino9@bigpond.com
littoral@waterfront.net.au
jevans1@bigpond.net.au
art@peterforward.com
rg3@rossgash.com
adriano@adriangemelli.com.au
elizabeth.gertsakis@auspost.com.au
sgevers@ozemail.com.au
polyopticon@gmail.com
gilbeetara@yahoo.com.au
cindygodden@yahoo.com.au
erikagofton@iprimus.com.au
goodchild-cuffley@castlemaine.net
jennygould_art@yahoo.com.au
marygray@bigpond.com
rona@ronagreen.com
growinska@hotmail.com
guegl7@hotmail.com
jrrdh@netscape.net
shawna@lightwriting.net
hawking.burnett@bigpond.com
garyhealey@optusnet.com.au
lisa_rah@yahoo.com.au
kathykat@tpg.com.au
lilyhibberd@eudoramail.com
kevinhitchins@bigpond.com.au
nickcostello@ozemail.com.au
moirastyles@fastmail.fm
colonna@pacific.net.au
worthyart@yahoo.com.au
dacchidang@gmail.com
art@semperstudio.com
neilbs@iprimus.com.au
dude@martinhurley.com
irving@aardvark.net.au
deejay@virtual.net.au
info@cindyjackson.com.au
Anna_jacobs82@hotmail.com
ieatcomics@hotmail.com
info@westspace.org.au
jkelly_333@yahoo.com.au
kuzbicki@bigpond.com.au
robert.lee@ozemail.com.au
linda_j_lees@hotmail.com
shivalee@dodo.com.au
asaletourneau@iprimus.com.au
judelove@tpg.com.au
garageartfoundry@hotmail.com
maloneneil@hotmail.com
eff@jeffmartin.com.au
sma53357@bigpond.net.au
jmcardle@netcon.net.au
mccosh@netspace.net.au
jill@netconnect.com.au
vivmehes@optusnet.com.au
news@melmcveigh.com
rmsquare@connexus.net.au
artvisionary@optusnet.com.au
jenni@jennimitchell.com.au
connie.m7@bigpond.com
wendy@mostlymosaics.com.au
nick@nickmorris.com.au
metromail@theage.com.au
mbackhouse@ozemail.com.au
murlid@bigpond.com
robert.nelson@artdes.monash.edu.au
clivemw@optusnet.com.au
sandraodea@hotmail.com
polixeni@netspace.net.au
bp@brunopasqualini.com
sean.payne@aph.gov.au
b@dd.com.au
jjp@vic.australis.com.au
enquiries@aeroart2000.com
msartist@gmail.com
untitledbjp@bigpond.com
kedar.pathak@pragtech.co.in
pittsnaomi@hotmail.com
gpurcell@bigpond.net.au
purdy@tpg.com.au
nusraq@yahoo.com
toneredd@hotmail.com
marilynrheese@hotmail.com
grafix@creativejuicefactory.com
marobertson@impulse.net.au
kate_rohde@hotmail.com
nickrolph@hotmail.com
cubistau@yahoo.com.au
rachel@hips.com.au
pwruiz@hotmail.com
rsaddington@yahoo.com.au
a.saunders@ballarat.edu.au
judi@judischiffphotography.com
lynnmark@alphalink.com.au
asele@unimelb.edu.au
pip@popomo.com
therobinbird@yahoo.ca
fern@fernartz.com
DrakenARTZ@optusnet.com.au
joel.spencer@au.fujitsu.com
staudejc@hotkey.net.au
j@stratmanstudio.com
jennstratman@hotmail.com
amberstuart@hotmail.com
kerher07@yahoo.com.au
dtatnall@patash.com.au
samantha@samanthathompson.com.au
info@threadgoldart.com
narelletryshard@hotmail.com
tanahmerah@hotmail.com
info@johnveeken.com.au
mail@kimvernon.net
cmwallace@ansonic.com.au
richard.ward@ormond.unimelb.edu.au
tezman13@hotmail.com
bee@hive.id.au
dan.wollmering@artdes.monash.edu.au
yelens@bigpond.com
louiseannzahra@hotmail.com
theteam@smilesolutions.com.au
city@holisticdental.com.au
contactus@cdimage.com.au
enquiries@dentistskinner.com.au
theteam@lavrinortho.com.au
info@lawyersconveyancing.com.au
neill.ogge@bigpond.com
info@mahons.com.au
enquiries@rct-law.com.au
plmr@westminsterlaw.com.au
legal@robinsongill.com.au
Harryfordkixass@hotmail.com
gurneyart@bigpond.com.au
megan.mcdonald@optusnet.com.au
papergail2000@yahoo.com.au
mbty@netspace.net.au
david@davidmoore.com.au
windsors@iprimus.com.au
boltonmarlow@aapt.net.au
info@lookart.net
jeaniebeanie@hotmail.com
monique_fietje@hotmail.com
amanda@mimco.com.au
aliruby@bigpond.com.au
pgamblen@hotmail.com
karenkaese@yahoo.com
tponting@bigpond.net.au
ycoppersmith@hotmail.com
suehford@netspace.net.au
julie_webb@yahoo.com
emessdee@hotmail.com
dunlopp@heraldsun.com.au
ilanabrahams@hotmail.com
sarahdastoli@yahoo.com
philkerney@willow-creek.com.au
rowena@email.com
dolev_tamar@hotmail.com
bilander@tcspl.com.au
anonda.bell@ngv.vic.gov.au
craftvic@craftvic.asn.au
basisjowilson@optusnet.com
vincent.odonnell@rmit.edu.au
giddyview@yahoo.com
robthecompere@yahoo.com
rinske@facescape.alphalink.com.au
rbazzani@bigpond.com
rchiodo@bigpond.com
sally@globalimmigrationservices.com.au
prudencelansell@hotmail.com
pmifould@alphalink.com.au
phally06@aol.com
p4ps@p4ps.com.au
sallyj@intrepidtravel.com
xtos@netspace.net.au
erasmus_v@yahoo.com
margk@cae.edu.au
susanhumph@hotmail.com
stephen.mckenzie@textmedia.com.au
steph@stephaniegrose.com.au
sgrey@bigpond.net.au
venessa@thegroundfloor.com.au
spurrier@usq.edu.au
sevafrangos@bigpond.com
jmanetta@netspace.net.au
amcdonala@yahoo.com
helendoig@yahoo.com.au
pat@swing-dancing.com
baraccowright@aol.com
vaughnb@itconnect.net.au
credden@commander.com
mayjason@bigpond.net.au
rblustein@breastscreen.org.au
dullard.jayne@abc.net.au
melissabedford@ozemail.com.au
annoldham@escapenet.com.au
leochristie@hotmail.com
art.monthly@anu.edu.au
hensach@netspace.net.au
irogers@bigpond.net.au
alfred.fischhaber@t-online.de
janeh@phg.com.au
guyolorenshaw@hotmail.com
eloise42@corplink.com.au
marinabromley@hotmail.com
beatrice.gralton@nga.gov.au
mccarthydc@hotmail.com
mprince@petermac.unimelb.edu.au
pol.knots@laposte.net
marghorwell@hotmail.com
margfitz02@yahoo.com.au
lparkinson@swin.edu.au
ema_mcc@yahoo.com.au
negrinj@ozemail.com.au
heidi_yardley@hotmail.com
heatheryoung2002@hotmail.com
774@your.abc.net.au
lisa_athans@hotmail.com
gking2@bigpond.net.au
s.girling-butcher@unimelb.edu.au
sdorsett@hotmail.com
annie@softwords.com.au
quanther@hotmail.com
omajoy@iprimus.com.au
suestergo@hotmail.com
thompsonanne@optusnet.com.au
tawhite@cyllene.uwa.edu.au
rblack@parks.vic.gov.au
judithking@ozemail.com.au
kamminga@minerva.com.au
cwomersley@theage.fairfax.com.au
christopher.menz@ngv.vic.gov.au
randomacts@optusnet.com.au
chector@ozemail.com.au
chrisfreeman1@bigpond.com
catlap@netspace.net.au
carolcarstairs@bigpond.com
Cshute@portphillip.vic.gov.au
jillmaclean@mac.com
grazi@primus.com.au
banjoh@bigpond.net.au
Malcom.Bywaters@utas.edu.au
boyd_chris@hotmail.com
freda@nex.net.au
fjval@bigpond.com
fiona@lawson.wow.aust.com
grace_emma@hotmail.com
cooliobananas@yahoo.com
jane.wagner@finance.gov.au
karenquinn@optusnet.com.au
michael.webster@rmit.edu.au
timmjones@netconnect.net.au
sowens@3aw.com.au
amandaj@unimelb.edu.au
deprivedartist@hotmail.com
aholland@theage.fairfax.com.au
vegamon@hotmail.com
moggys@vicnet.net.au
sappho@netspace.net.au
s_glickman@hotmail.com
hep_chic@yahoo.com.au
mculloch@surf.net.au
maryanneleavey@hotmail.com
mljmedia@hotmail.com
mgotsi@hotmail.com
m.nicholls@finearts.unimelb.edu.au
mark.mcdean@rmit.edu.au
janwallace@hotmail.com
johntusonbennett@hotmail.com
isobelclement@bigpond.com
jdonegan@theage.fairfax.com.au
hilary_lennon@hotmail.com
greghargrave@skilled.com.au
greg.giannis@vu.edu.au
mcleodgillian@hotmail.com
safeg@theaustralian.com.au
i.vanni@uws.edu.au
mail@julianburnside.com
amccormack@rocketmail.com
klewiss@hotmail.com
stirringitup@hotmail.com
kneal@ozemail.com.au
karencasey@yahoo.com
info@bso.net.au
codsinpods@yahoo.com
gmclean49@yahoo.com
suttonwines@ozemail.com.au
john.hitti@maths.monash.edu.au
jwhitehead@ansonic.com.au
trandafile@hotmail.com
koollwoman@hotmail.com
Helen.bolton@bigpond.com
lshewan@bryn.com.au
elizabethd@ozemail.com.au
s3085313@student.rmit.edu.au
donnamolan@aol.com
romden@yahoo.com
kedar.pathak@pragtech.co.in
bdaly77@hotmail.com
murray@gmail.com
creid@bellpotter.com.au
michellemarie_103@hotmail.com
marty_mas@hotmail.com
andkle@melbourne.vic.gov.au
lmsolis@bigpond.com
juliabritton@hotmail.com
ellyls@bigpond.com
juliel@bigpond.net.au
damokate@bigpond.com
doublemm@ozemail.com.au
christopher_pender@hotmail.com
allisontroth@bigpond.com
sritson@bigpond.net.au
mark@universitymews.com.au
rocshamqueen@hotmail.com
lomojee@hotmail.com
robynmorris@bigpond.com
jallen90@optusnet.com.au
henrys@hangingrock.com.au
harnoldi@unimelb.edu.au
songl88@optushome.com.au
a_russellhead@hotmail.com
nell2@bigpond.net.au
dileeprastogi@hotmail.com
meganplays@yahoo.com
steve@stavrosdesign.com.au
adrian_mulraney@hotmail.com
helen.thorn@ngv.vic.gov.au
rachelbugg@hotmail.com
philipmrichards@hotmail.com
ryan_michelle2004@yahoo.com.au
sarahbl@ozemail.com.au
julia.holt@afct.org.au
david.macintosh@bigpond.com
angelevoir@yahoo.com
elena@qvisual.com.au
capgunproductions@westnet.com.au
lauren_hawker@hotmail.com
jagrif@unimelb.edu.au
bbolt@unimelb.edu.au
cmission@iprimus.com.au
don.richter@tourism.vic.gov.au
pcarroll@globalgrooves.com.au
hilaryhoggett@hotmail.com
talmadgeg@abaf.org.au
rgovett@hotmail.com
fehily@bigpond.net.au
pdmclure@ozemail.com.au
psouthorn@pacific.net.au
pplarcey@tpg.com.au
neil.mitchell@gmx.co.uk
jeanette.dyke@doi.vic.gov.au
t.pitt@bigpond.net.au
robertbuckingham@netspace.net.au
sblu@optusnet.com.au
aganda@bigpond.net.au
judith_gibson@hotmail.com
sarah_borg911@hotmail.com
nw@waite.com.au
mandrew@kpmg.com.au
director.vic@abc.net.au
braworth@netspace.net.au
mora4@ozemail.com.au
bady@vtown.com.au
vicnot@bigpond.com
jesse@alphalink.com.au
ebizys@vogue.com.au
cjdurling@yahoo.com.au
libbystrain@hotmail.com
jayphues@hotmail.com
louise.steinfort@bigpond.com
diyartshow@yahoo.com.au
sandriko@portphillip.vic.gov.au
paint2@netspace.net.au
rosowen@hotmail.com
spryfamily@bigpond.com.au
suegoldman@ains.net.au
pberger@alphalink.com.au
dnrx@yahoo.com
xansax@hotmail.com
bethanywheeler@hotmail.com
jbotham@camhigh.vic.edu.au
kkukolja@hotmail.com
bbakerfish@yahoo.com.au
terry.laidler@logicalideas.com.au
ronsem@escapenet.com.au
foofski@hotmail.com
cfitz@bigpond.net.au
peter.barber@bdw.com
kimp@postoffice.sandybay.utas.edu.au
keeper_75@yahoo.com.au
mkelaher@unimelb.edu.au
deborah.williams@rmit.edu.au
s.lowish@unimelb.edu.au
sscally@optusnet.com.au
lukewagner@bigpond.com
m.caruana@latrobe.edu.au
callum.ingram@dpc.vic.gov.au
ren_vankan@hotmail.com
pnelson@brandagency.com.au
joannafraser40@hotmail.com
par3182@hotmail.com
judithlord@ozemail.com.au
jacinta.thompson@afct.org.au
maggamag@hotmail.com
talithark@hotmail.com
mliffman@swin.edu.au
gcameron@liv.asn.au
donaldward_@hotmail.com
info@chiverton.com.au
sashkat_au@yahoo.com.au
deadboy700@hotmail.com
flag40@hotmail.com
Nick.skibinski@afct.org.au
nwhite@ozemail.com.au
sebastian_lai@hotmail.com
sromanes@bigpond.net.au
ameliachandos@hotmail.com
lukescarlett@hotmail.com
louise.taylor@dvc.vic.gov.au
ethel_t@bigpond.net.au
nadia_ninenine@hotmail.com
lorraine.Hundloe@dfat.gov.au
fryad@hotmail.com
roxy@bingara.nsw.gov.au
jt@necg.com.au
suongas@hotmail.com
qihai@optushome.com.au
dsoundi@museum.vic.gov.au
kglenie@netspace.net.au
seterovic@au-horizons.com.au
thomaseta@yahoo.co.uk
cassandralongley@netspace.net.au
debora.lewis@hp.com
elizabeth.barcan@bigpond.com
larissahjorth@hotmail.com
linda.williams@ems.rmit.edu.au
lisaroet@hotmail.com
leyoung@netspace.net.au
lizherwaarden@yahoo.com
liz@experimenta.org
Lizbliz@bigpond.com
louisebetts@blackswan.org.uk
tpd@mavic.asn.au
markvanzyl@hotmail.com
norwegiansweatshop@hotmail.com
interval@inpress.com.au
windcon@bigpond.net.au
mgilding@swin.edu.au
monicaho3@yahoo.com.au
myrapark@mcmedia.com.au
ngv.contemporary@ngv.vic.gov.au
nicholasnedelkopoulos@labyrinth.net.au
objet@horizen.com.au
paola1@ozemail.com.au
pross@plc.vic.edu.au
pstroud@zoo.org.au
phaedra.press@gmail.com
Philip_Faulks@hotmail.com
kedar.pathak@pragtech.co.in
pwischer@swin.edu.au
julianchapple@hotmail.com
sakhil@gmail.com
kno3grl@yahoo.com
erintasmania@hotmail.com
oskar_black@yahoo.com.au
pjslater@bigpond.net.au
kathy@gvmedia.com.au
simonduiker@hotmail.com
limecha@hotmail.com
anna@ayton.id.au
watiart@ozemail.com.au
ryan@swan.wa.gov.au
tarabadcock@hotmail.com
larraine@onaustralia.com.au
loverodney@hotmail.com
phickey@ngaanyatjarraku.wa.gov.au
stellart@bigpond.com
rkrinks@yahoo.com.au
linrenz@hotmail.com
nrt@pacific.net.au
artdavid@bigpond.net.au
simonelouise@acenet.net.au
merrynspencer@hotmail.com
andrea.artisana@bigpond.com
idg@unsw.edu.au
lucjudith@optusnet.com.au
cherielegs11@hotmail.com
dogday1@optusnet.com.au
thole@artbank.gov.au
matt_inabinet@hotmail.com
emmanuelle_little@hotmail.com
punx_not_dead90@hotmail.com
adams405@hotmail.com
vonnie801@hotmail.com
Graeme.riddle@austin.org.au
rwconrad@gmail.com
mark@in8.net.au
hinnesbrown@gmail.com
mrfoyn@yahoo.com
cranky_fox@hotmail.com
fourburnhams@ozemail.com.au
catecollopy@optusnet.com.au
ildiko.hammond@optusnet.com.au
cmholmes@netspace.net.au
info@blender.com.au
soula@soula.com.au
paulsmith@estudioeditions.com.au
art@ssfa.com.au
designad@bigpond.net.au
moffatt8@bigpond.com
fayewils@pnc.com.au
rsvp@marsgallery.com.au
liz@lizcuming.com
rmdiez@bigpond.net.au
sydneytownart@ozemail.com.au
kbriscoe@bigpond.net.au
info@ubergallery.com
janebecker@iinet.net.au
gblondel@bigpond.com
adeleboag@adeleboaggallery.com
goya@techinfo.com.au
fredcress@aapt.net.au
brackenreg@optusnet.com.au
wersula@bigpond.com
christophersaban@gmail.com
art@gouldgalleries.com
anthony@goodwords.com.au
info@berkeleyeditions.com.au
galleryhm1@optusnet.com.au
jonohanlon@bigpond.com
skybluestudio@optusnet.com.au
catherine@catherinestringer.com.au
kylie@nortondesign.com.au
megsy80@optusnet.com.au
wjdiez@bigpond.net.au
Alex.Taylor@acmi.net.au
uat@toorak.unitingchurch.org.au
toyotayoko@hotmail.com
Z.Crizzle@exchange.curtin.edu.au
yvettevb@yahoo.com
tk.ali@tcfilms.com.au
rtregaskis@gmail.com
info@nelliecastangallery.com
stelarc@va.com.au
smithreporter@metmedia.com.au
rmit.gallery@ems.rmit.edu.au
mulnor@raketnet.nl
nola.martorella@raywhite.com
nlanctot@artforum.com
ninwinter@hotmail.com
mgoode@acmi.net.au
M.Harris@latrobe.edu.au
madjic@tpg.com.au
loy.lichtman@vu.edu.au
jswann@lyss.vic.edu.au
J.Pascoe@ozco.gov.au
jayne@artnews.com.au
jnolen@acmi.net.au
cameronriddell@netspace.net.au
submitfolio@gmail.com
fiona_murphy@lycos.com
david@welcometv.com.au
choward@collegeart.org
buchel@buchel.com
annmorrow@bigpond.com.au
24hrart@24hrart.org.au
admin@lempriereaward.com.au
anat@anat.org.au
graham.young@onlineopinion.com.au
info@worldofartmagazine.com
bags@austcontour.com.au
bennett_pam@ggscorio.vic.edu.au
boyd.rosemary.f@edumail.vic.gov.au
sarah@brucedavis.com.au
carrum.downs.sc@edumail.vic.gov.au
Casual.Direct@det.nsw.edu.au
cjack@mackillop.vic.edu.au
charlie0172003@yahoo.com
pakenham.sc@edumail.vic.gov.au
kingcems@alphalink.com.au
colla1@bigpond.com
aquainversion@hotmail.com
frankky_d@hotmail.com
egle@ozemail.com.au
malissa@comedyfestival.com.au
jeph@jephko.com
rekendall@gmail.com
barrylevinson@hotmail.com
stupid_rose@hotmail.com
ildi@artycles.com.au
simon_yates@ebi.com.au
nedbeckley@hotmail.com
mushacoom@hotmail.com
minelakrupic@hotmail.com
adammay@bigpond.com
randiwagner@hotmail.com
azokevin@hotmail.com
pippingeorge@hotmail.com
annaspannalalia@hotmail.com
rgill@theage.com.au
Natashia@unimelb.edu.au
underestimatedmb@hotmail.com
paul@hoyne.com.au
reneegauci@hotmail.com
darceybella@hotmail.com
dmaphakela@yahoo.co.uk
mborlase@iprimus.com.au
popkong@hotmail.com
mcirvine@smartchat.net.au
brunopas@lexicon.net
langlowest@gmail.com
rozmcquillan@aapt.net.au
reade54@optusnet.com.au
mail@heroprint.com.au
Melpetty@aol.com
enquiries@studio121.com.au
fleur_mann@hotmail.com
leah@wheelton.org
sianp@netlink.com.au
sheath@theage.fairfax.com.au
rusher@theage.fairfax.com.au
listings@theartnewspaper.com
goodweekend@mail.fairfax.com.au
gmunro@theage.fairfax.com.au
evanl@lowensteinsarts.com.au
lmi@netspace.net.au
bluechairtheatreworks@hotmail.com
artsnews@absolutearts.com
bbbanana_9@yahoo.com
andrew@inpress.com.au
amandalinnell@yahoo.com
jacquelineh17@gmail.com
bturner@mail.fairfax.com.au
jonathonbeck@yahoo.com.au
mairinicolson@yahoo.com.au
purplemediagroup@bigpond.com
maddybeatty@hotmail.com
marian_clarkin@hotmail.com
jacekaj@yahoo.com.au
bsearle@homemail.com.au
eleanor.whitworth@dpc.vic.gov.au
gabriella@reteitalia.com.au
eye4art@bigpond.net.au
tract206@yahoo.com
raccraw@gmail.com
pavlelazarev@hotmail.com
gcui65@yahoo.com.au
nicic@bigpond.net.au
akyduck@hotmail.com
alinnta@hotmail.com
tracie.toohey@bigpond.com
leonieam@ncable.net.au
bullarto.ps@edumail.vic.gov.au
davidwilson@hotmail.com
workingimages@ozemail.com.au
art@anthonybreslin.com
art_grrrl@hotmail.com
spiritofplace@mac.com
press1@iinet.net.au
julietmarr@optusnet.com.au
spookyrecords@gmail.com
stackheelsmanagement@hotmail.com
saltwater@pacific.net.au
nickboddsy@hotmail.com
strongs@ocean.com.au
tilly@marsgallery.com.au
hilary@watchmyart.com
sideris@diagesis.com
helenmclancy@bigpond.com
Daniela.Colledani@macmillan.com.au
gina.stuart@optushome.com.au
tomlee909@hotmail.com
dana@ilovelenko.com
ebeale@mail.optometry.unimelb.edu.au
aaharkin@optusnet.com.au
sarah.ramsay@student.rmit.edu.au
robyn.doyle@tpg.com.au
pravind5@ford.com
bethanygallery@impulse.net.au
cstevens@ap.ansell.com
lhorwood@whkmel.com.au
cleunig@hotmail.com
Sharpeshooter_3@hotmail.com
western_sun@bigpond.com
rshep1@bigpond.com
Luke@seniorart.com.au
r.rogers@Bendigo.vic.gov.au
huskydew@hotmail.com
jhendo@netcon.net.au
olivia@luluconsulting.com.au
martymanca@hotmail.com
mmacleod@iinet.net.au
mark.gray@worley.com.au
st73599@bigpond.net.au
jumpsugarjump@yahoo.com
kylieboltin@gmail.com
loveofdiagrams@hotmail.com
lassielou46@hotmail.com
tha_abomb@hotmail.com
joshuamorgan83@yahoo.com
velisha@bigpond.net.au
buziuk@optusnet.com.au
joshcarr2001@yahoo.com.au
nena_fairy91@hotmail.com
matboe@hotmail.com
hotmale_156@hotmail.com
jowy_grrrrl@hotmail.com
Moon_face08@hotmail.com
brionyturtle@yahoo.com.au
shelley_is_cool@hotmail.com
slademann@ihug.com.au
meteor_200@hotmail.com
cellenm@yahoo.com
thefavouriteplayboybunny@hotmail.com
kumaz12@hotmail.com
keezza11@hotmail.com
eastfield@optusnet.com.au
events@asialink.unimelb.edu.au
paul@australianartspace.com.au
suzie.attiwill@rmit.edu.au
kmurray@craftvic.asn.au
krhodes@craftvic.asn.au
rjobson@craftvic.asn.au
mmoreno@craftvic.asn.au
emayall@acmi.net.au
Philippa.Jelbart@fortyfivedownstairs.com
tim.huggins@dfat.gov.au
suedragon2002@yahoo.com
megaevan@netspace.net.au
peter.westwood@rmit.edu.au
zaras@heide.com.au
mjakobi@deakin.edu.au
luke@lukerogersstudio.com
austin.hazel.j@edumail.vic.gov.au
soonmypet@hotmail.com
anpar@melbpc.org.au
Arety@ibisimmigration.com.au
crock@crockproductions.com.au
e.papacharalambous@vassiliko.com
jodee@totzek.com
kat.katsoulis@gmail.com
pmgiust@aapt.net.au
dorothy@satch.com.au
jim@satch.com.au
leda@satch.com.au
register@sbem.com.au
r.brown@unimelb.edu.au
libwirt@gmail.com
Malcolm.Dolling@akerkvaerner.com
pmaddox@apesma.asn.au
Peggy.Ronnau@neami.org.au
jcarver@carder.com.au
jc@winslowfunds.com.au
dgriggs@darebin.vic.gov.au
kedar.pathak@pragtech.co.in
Alix.Hunter@neami.org.au
ewood@apesma.asn.au
matt@twenty4.com.au
steve@kryptonite.com.au
damian@crockproductions.com.au
davidbern77@hotmail.com
fstathatos@garnaut.com.au
hindmarf@anz.com
jevreb@optusnet.com.au
mperpina@iprimus.com.au
Renee.Mead@akerkvaerner.com
rob@langloisphoto.com.au
sarah@sbem.com.au
tasiam19@hotmail.com
theantons@hotmail.com
apuniacke@optusnet.com.au
cwood@melbourne.org.au
graeme.bryant@graduatecareers.com.au
mtv@bigpond.com.au
elanvin@alphalink.com.au
john@kryptonite.com.au
robertasatch@hotmail.com
liebzeit@deakin.edu.au
annab@deakin.edu.au
ahaggar@deakin.edu.au
bjbr@deakin.edu.au
wieseart@optusnet.com.au
ktorpey@deakin.edu.au
lkyle@deakin.edu.au
nicholas.daniel@deakin.edu.au
robynelatham@netspace.net.au
LaptopSecurity@hideawaysafe.com.au
hgabardi@optusnet.com.au
clytiesa@optusnet.com.au
rho@bondpersonnel.com.au
hubbard@earthlink.com.au
mangiamele@netspace.net.au
jillian_trezise@uow.edu.au
Burvic@optusnet.com.au
Melissa.Gibbs@campuslife.monash.edu.au
info@samburns.com.au
Linzsmith@tpg.com.au
ikue_van@yahoo.com.au
myramoller@gmail.com
orionincau@yahoo.com.au
jenny_dun@hotmail.com
ponch@vicnet.net.au
shantrom@hotmail.com
hans_vet@hotmail.com
carlaori@gmail.com
s-read@hotmail.com
dave_harkin2001@yahoo.com.au
monique@hotmail.com
levi@levi.id.au
cos@thecourier.com.au
blond1957@hotmail.com
fi@egenerica.com
jezebel84@hotmail.com
antwest500@hotmail.com
adam8000plus@hotmail.com
nicciwest@hotmail.com
hamiltondesign@hotmail.com
bree_205@hotmail.com
feehan_sarah@yahoo.com.au
ska_tanic@hotmail.com
impeached2@hotmail.com
aobrien@kangan.edu.au
ojgranowski@gmail.com
michaels@viceaustralia.com
derek_winwood@hotmail.com
luke_wos@hotmail.com
lyngsie2@hotmail.com
butlerhannah@hotmail.com
bayside@textmedia.com.au
theleader@leadernewspapers.com.au
sven_langebeck@hotmail.com
v.martino@bigpond.com
josh.bassett@gmail.com
sunshine_bell@hotmail.com
hfrajman@netspace.net.au
joleahy77@gmail.com
chacokato@mac.com
brigid12@hotmail.com
alaineek@hotmail.com
info@theedgephoto.com.au
catreeana@gmail.com
tim@royce.com.au
symbiosis11@hotmail.com
anna.hickey-moody@usyd.edu.au
rainfire@bigpond.net.au
domllawella@hotmail.com
jimmyjamjamez@hotmail.com
allenipa@yahoo.com
caitlin_muscat@hotmail.com
artyheg@optusnet.com.au
ebirritta@hotmail.com
lesleyj@adam.com.au
lucahaus72@yahoo.com.au
shantelle@hideawaysafe.com.au
janicet@unimelb.edu.au
beckmorley@yahoo.com.au
sara_hstar@hotmail.com
p.darling@bigpond.com
annmariemiddleton@yahoo.com
paula.thorny@gmail.com
bella@hotkey.net.au
barichello@iprimus.com.au
peterdann@yahoo.com
misskim@dodo.com.au
sunra@aanet.com.au
chrisguest@netspace.net.au
kristen_dyer@bigpond.com
marcelo_salvo@hotmail.com
art_of_grace@yahoo.com.au
jole_di_florio@hotmail.com
wandabuchanan@hotmail.com
asphyxiaphilia@yahoo.com
niffling@gmail.com
give.me.the.cure@hotmail.com
janedodge746@gmail.com
rachperry@yahoo.com
jess.tremp@gmail.com
echelsg@hotmail.com
venusrules2002@yahoo.com
optimism@bigpond.com
Sabine@bassetlobaza.com.au
chen.phoebe@gmail.com
mhallpike@yahoo.com
simonbrisbane@hotmail.com
cjhallpike@bigpond.com
arthropodium@hotmail.com
globalpriestess@myway.com
nina_phunsta@yahoo.com
bashotim@yahoo.com
cattpowerr@yahoo.com.au
qprintfinishing@iprimus.com.au
frances@askowl.com.au
geegeegow@hotmail.com
spamlouth@yahoo.com.au
weiyingang@artsconnect.com.au
lisabotticelli@artsconnect.com.au
harshcg@gmail.com
lance_17_@hotmail.com
kareneasymoney@yahoo.com.au
barbs101@hotmail.com
chayya.clancy@gmail.com
srscmg@yahoo.com
mirella3056@optusnet.com.au
tzsshell@netspace.net.au
petaglenn@yahoo.com
deirdre_a_walsh@yahoo.com.au
kedar.pathak@pragtech.co.in"
          newlem = Newsletteremail.new
          newlem.user_id =  44
          newlem.newsletter_id =  9
          newlem.save
          
           nlc=newlem.newsletter.news_letter_content
          doc = Nokogiri::HTML(nlc)
          doc.xpath('//img').each do |node|
            cip= node.get_attribute('src')
            #i am putting a condition here if its from bsg server src then dont change it
            if cip.to_s.include?(".com")
            else 
            node.set_attribute('src',"http://#{request.host_with_port}/"+cip)
            end 
          end






      a.each do |x|
      begin    
       email= UserMailer.create_send_emailnewsletter_all(newlem.newsletter.title,doc.to_html,x.strip)
       UserMailer.deliver(email)
      rescue =>e
      logger.info "some email sending error"
      end
       end
 
   

end



  
end
