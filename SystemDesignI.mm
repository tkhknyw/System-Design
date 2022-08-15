<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1659214493853" ID="ID_1644532653" MODIFIED="1659279762758" TEXT="System Design I (Alex Xu)">
<node CREATED="1659214618293" FOLDED="true" ID="ID_1864360058" MODIFIED="1659279762755" POSITION="right" TEXT="Scale from 0 to Millions">
<node CREATED="1659214678298" FOLDED="true" ID="ID_1968477016" MODIFIED="1659279762750" TEXT="single server setup">
<node CREATED="1659214688657" ID="ID_1759923749" MODIFIED="1659215308525" TEXT="client (browser, mobile) + DNS + Web Server"/>
<node CREATED="1659214768106" FOLDED="true" ID="ID_1068198601" MODIFIED="1659279762750" TEXT="client (browser, mobile) + DNS + Web Server + Database">
<node CREATED="1659214810362" ID="ID_1847688147" MODIFIED="1659214817644" TEXT="Relational Database"/>
<node CREATED="1659214819960" FOLDED="true" ID="ID_582874790" MODIFIED="1659279762750" TEXT="NoSql Database  (DynamoDB, Cassandra, BigTable)">
<node CREATED="1659214910145" ID="ID_20550565" MODIFIED="1659214923619" TEXT="Super low latency"/>
<node CREATED="1659214925457" ID="ID_1207135363" MODIFIED="1659214954755" TEXT="Unstructured data"/>
<node CREATED="1659214956528" ID="ID_128623707" MODIFIED="1659214972724" TEXT="Serialize and Deserialize only"/>
<node CREATED="1659214974256" ID="ID_579647222" MODIFIED="1659214983076" TEXT="massive amout of data"/>
</node>
</node>
</node>
<node CREATED="1659214990822" FOLDED="true" ID="ID_954757730" MODIFIED="1659279762751" TEXT="Scaling">
<node CREATED="1659215010927" FOLDED="true" ID="ID_235410548" MODIFIED="1659279762751" TEXT="Vertical scaling">
<node CREATED="1659215020752" FOLDED="true" ID="ID_366858780" MODIFIED="1659279762751" TEXT="Scale up. adding more power (CPU, RAM, etc)">
<node CREATED="1659215111703" ID="ID_747774527" MODIFIED="1659215117315" TEXT="hard limit"/>
<node CREATED="1659215141702" ID="ID_307205284" MODIFIED="1659215156203" TEXT="do not have failover or redundancy"/>
</node>
</node>
<node CREATED="1659215053863" FOLDED="true" ID="ID_388510364" MODIFIED="1659279762751" TEXT="Horizontal scaling">
<node CREATED="1659215063409" ID="ID_1030448029" MODIFIED="1659215108339" TEXT="Scale out - adding more servers to the pool of resources"/>
</node>
</node>
<node CREATED="1659215177376" FOLDED="true" ID="ID_628197656" MODIFIED="1659279762751" TEXT="load balancer">
<node CREATED="1659215364594" FOLDED="true" ID="ID_1555762406" MODIFIED="1659279762751" TEXT="client (browser, mobile) + DNS + LB + 2 Web Servers">
<node CREATED="1659215215259" HGAP="28" ID="ID_334522338" MODIFIED="1659215871577" TEXT="load balancer distribute incoming traffic among web servers that are defined in the load balanced set."/>
<node CREATED="1659215420118" ID="ID_1405966871" MODIFIED="1659215443450" TEXT="a private IP is an IP address rechable only between servers in the same network"/>
<node CREATED="1659215894086" ID="ID_1012610922" MODIFIED="1659215941200" TEXT="by adding LB and more web servers, solved no failover issue and improved availability"/>
</node>
</node>
<node CREATED="1659215947909" FOLDED="true" ID="ID_1314542893" MODIFIED="1659279762751" TEXT="database replication">
<node CREATED="1659216035877" FOLDED="true" ID="ID_1717176381" MODIFIED="1659279762751" TEXT="master/slaves">
<node CREATED="1659216050341" ID="ID_6275446" MODIFIED="1659216062672" TEXT="master: write"/>
<node CREATED="1659216063180" FOLDED="true" ID="ID_454661733" MODIFIED="1659279762751" TEXT="slave: get copies from master and only supports read">
<node CREATED="1659216171516" ID="ID_756941162" MODIFIED="1659216197840" TEXT="most applications requires much higher ratio of reads to writes"/>
</node>
</node>
<node CREATED="1659217470084" FOLDED="true" ID="ID_1541812177" MODIFIED="1659279762751" TEXT="Advantages">
<node CREATED="1659217487148" ID="ID_874253136" MODIFIED="1659217494879" TEXT="Better performance"/>
<node CREATED="1659217507771" ID="ID_1338982660" MODIFIED="1659217513887" TEXT="Reliability"/>
<node CREATED="1659217496819" ID="ID_750720189" MODIFIED="1659217504263" TEXT="high availability"/>
</node>
<node CREATED="1659217588148" ID="ID_3603659" MODIFIED="1659217591615" TEXT="failover"/>
</node>
<node CREATED="1659217595123" FOLDED="true" ID="ID_1402266656" MODIFIED="1659279762753" TEXT="cache (data cache)">
<node CREATED="1659217603565" FOLDED="true" ID="ID_195798134" MODIFIED="1659279762751" TEXT="a cache is a temporary storage areas that stores the result of expensive responses of frequently accessed data in memory so that subsequent requets are served more quickly">
<node CREATED="1659217834404" ID="ID_1927443676" MODIFIED="1659217861246" TEXT="tempory, expensive, frequently, in memory, quickly"/>
</node>
<node CREATED="1659217733194" FOLDED="true" ID="ID_1653210540" MODIFIED="1659279762753" TEXT="strategy">
<node CREATED="1659217738442" ID="ID_981131764" MODIFIED="1659217744047" TEXT="read through strategy"/>
</node>
<node CREATED="1659217763370" FOLDED="true" ID="ID_548683232" MODIFIED="1659279762753" TEXT="consideration">
<node CREATED="1659217781267" ID="ID_1376907476" MODIFIED="1659217889152" TEXT="user cache when data is read frequently but modified infrequently">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1659217874266" ID="ID_678293584" MODIFIED="1659217926190" TEXT="expiration policy (not too long, not too short)">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1659217929940" ID="ID_34949751" MODIFIED="1659217949182" TEXT="consistency - database and cache in sync">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1659217962258" FOLDED="true" ID="ID_252120120" MODIFIED="1659279762753" TEXT="Failures: single cache server SOPF.">
<icon BUILTIN="full-4"/>
<node CREATED="1659218034537" ID="ID_337101046" MODIFIED="1659218043317" TEXT="overprovision"/>
<node CREATED="1659218055890" ID="ID_311359816" MODIFIED="1659218073501" TEXT="multip cache server across different DC"/>
</node>
<node CREATED="1659218399488" FOLDED="true" ID="ID_942219287" MODIFIED="1659279762753" TEXT="eviction policy">
<icon BUILTIN="full-5"/>
<node CREATED="1659218428177" ID="ID_53460890" MODIFIED="1659218431660" TEXT="LRU"/>
<node CREATED="1659218432816" ID="ID_1916211886" MODIFIED="1659218435652" TEXT="LFU"/>
<node CREATED="1659218436888" ID="ID_192970123" MODIFIED="1659218439956" TEXT="FIFO"/>
</node>
</node>
</node>
<node CREATED="1659217627267" FOLDED="true" ID="ID_814420591" MODIFIED="1659279762753" TEXT="CDN (static web contents cache)">
<node CREATED="1659218263129" ID="ID_1309831432" MODIFIED="1659218330949" TEXT="a CDN network is a network of geographically dispersed servers used to deliver static content. CDN servers cache static content"/>
<node CREATED="1659218332601" FOLDED="true" ID="ID_716753179" MODIFIED="1659279762753" TEXT="consideration">
<node CREATED="1659218339257" ID="ID_602395499" MODIFIED="1659218340637" TEXT="cost"/>
<node CREATED="1659218341994" ID="ID_521046979" MODIFIED="1659218349813" TEXT="cache expeiry"/>
<node CREATED="1659218351777" ID="ID_274350206" MODIFIED="1659218360373" TEXT="fallback"/>
<node CREATED="1659218364785" ID="ID_1487639540" MODIFIED="1659218387164" TEXT="invalidating files (using version)"/>
</node>
</node>
<node CREATED="1659218549904" FOLDED="true" ID="ID_1597581487" MODIFIED="1659279762754" TEXT="stateless web tier">
<node CREATED="1659218571583" FOLDED="true" ID="ID_1438756700" MODIFIED="1659279762753" TEXT="each web server in the cluster access state data from database">
<node CREATED="1659218633089" ID="ID_1271816561" MODIFIED="1659218642203" TEXT="autoscaling web server"/>
</node>
</node>
<node CREATED="1659218557585" ID="ID_1985644061" MODIFIED="1659218562445" TEXT="stateful architecture"/>
<node CREATED="1659218654672" ID="ID_1150793804" MODIFIED="1659218660507" TEXT="stateless architecture"/>
<node CREATED="1659218661344" FOLDED="true" ID="ID_684668467" MODIFIED="1659279762754" TEXT="data center">
<node CREATED="1659218765624" ID="ID_1244291361" MODIFIED="1659218776419" TEXT="redirect traffic"/>
<node CREATED="1659218777879" ID="ID_1170651556" MODIFIED="1659218783220" TEXT="data replication"/>
<node CREATED="1659218787952" ID="ID_652321703" MODIFIED="1659218794780" TEXT="test and deployment"/>
</node>
<node CREATED="1659218824735" FOLDED="true" ID="ID_895124753" MODIFIED="1659279762754" TEXT="messaging queue">
<node CREATED="1659218844183" FOLDED="true" ID="ID_89410714" MODIFIED="1659279762754" TEXT="decouple different components os that they can scale independently">
<node CREATED="1659218899551" ID="ID_1118567565" MODIFIED="1659218940603" TEXT="message queue is a durable component storied in memory, support async communication. serves as a buffer and distributes asynchronous requests"/>
</node>
</node>
<node CREATED="1659218981960" FOLDED="true" ID="ID_1580647205" MODIFIED="1659279762754" TEXT="logging, metrics, automation">
<node CREATED="1659219000097" ID="ID_1294929619" MODIFIED="1659219022371" TEXT="logging: error log at per server level and aggregated"/>
<node CREATED="1659219025167" FOLDED="true" ID="ID_610000137" MODIFIED="1659279762754" TEXT="metrics:">
<node CREATED="1659219038912" ID="ID_403435283" MODIFIED="1659219049955" TEXT="host level metrics"/>
<node CREATED="1659219051191" ID="ID_84632589" MODIFIED="1659219068666" TEXT="aggregated level metrics: preformance, etc."/>
<node CREATED="1659219069862" ID="ID_1257519734" MODIFIED="1659219074810" TEXT="key business metrics"/>
</node>
<node CREATED="1659219085358" ID="ID_911948798" MODIFIED="1659219119394" TEXT="automation: CICD"/>
</node>
<node CREATED="1659219150950" FOLDED="true" ID="ID_1555333457" MODIFIED="1659279762754" TEXT="database scaling">
<node CREATED="1659219156143" ID="ID_106034211" MODIFIED="1659219159002" TEXT="vertical"/>
<node CREATED="1659219170550" FOLDED="true" ID="ID_1654615824" MODIFIED="1659279762754" TEXT="horizontal">
<node CREATED="1659219174958" FOLDED="true" ID="ID_667476899" MODIFIED="1659279762754" TEXT="sharding">
<node CREATED="1659219183966" ID="ID_530486306" MODIFIED="1659219202394" TEXT="seprate large database to small. hash to find the shard"/>
<node CREATED="1659219210142" ID="ID_1018947079" MODIFIED="1659219212634" TEXT="reshard"/>
<node CREATED="1659219223863" ID="ID_1278618144" MODIFIED="1659219228514" TEXT="celebrity problem"/>
<node CREATED="1659219237174" ID="ID_113298338" MODIFIED="1659219248658" TEXT="hard to join. denormalization"/>
</node>
</node>
</node>
<node CREATED="1659219276542" FOLDED="true" ID="ID_809386283" MODIFIED="1659279762754" TEXT="Millions of users">
<node CREATED="1659219285887" ID="ID_353495296" MODIFIED="1659219293362" TEXT="stateless web tier"/>
<node CREATED="1659219295406" ID="ID_834878131" MODIFIED="1659219300906" TEXT="redundancy at each tier"/>
<node CREATED="1659219329366" ID="ID_1453062007" MODIFIED="1659219341650" TEXT="use CDN for static  assets"/>
<node CREATED="1659219303366" ID="ID_500068477" MODIFIED="1659219314306" TEXT="cache data as much as you can"/>
<node CREATED="1659219425965" ID="ID_1448589915" MODIFIED="1659219432273" TEXT="scale data tier by sharding"/>
<node CREATED="1659219319390" ID="ID_1380251503" MODIFIED="1659219325898" TEXT="support multiple data centers"/>
<node CREATED="1659219353190" ID="ID_1809508037" MODIFIED="1659219382145" TEXT="moniter and automate"/>
</node>
</node>
<node CREATED="1659219470909" FOLDED="true" ID="ID_1770411371" MODIFIED="1659279762755" POSITION="right" TEXT="Rate Limiter">
<node CREATED="1659219511350" FOLDED="true" ID="ID_1716301256" MODIFIED="1659279762755" TEXT="Scope">
<node CREATED="1659219516013" FOLDED="true" ID="ID_340344533" MODIFIED="1659279762755" TEXT="what kind of rate limiter">
<node CREATED="1659219534518" ID="ID_1545906680" MODIFIED="1659219536337" TEXT="client side"/>
<node CREATED="1659219542142" ID="ID_1133367573" MODIFIED="1659219544289" TEXT="server side"/>
</node>
<node CREATED="1659219547813" FOLDED="true" ID="ID_789379151" MODIFIED="1659279762755" TEXT="what does the rate limiter do">
<node CREATED="1659219558942" ID="ID_345036619" MODIFIED="1659219563457" TEXT="throttle traffic"/>
<node CREATED="1659219564390" ID="ID_58079243" MODIFIED="1659219581177" TEXT="limit operations such as copons, etc."/>
</node>
<node CREATED="1659219586861" ID="ID_635583867" MODIFIED="1659219599577" TEXT="what is the limiter rule"/>
<node CREATED="1659219636349" FOLDED="true" ID="ID_135351063" MODIFIED="1659279762755" TEXT="what is the limiter algorithm">
<node CREATED="1659219712205" ID="ID_1608304100" MODIFIED="1659219715681" TEXT="token bucket"/>
<node CREATED="1659219717286" ID="ID_2501710" MODIFIED="1659219721873" TEXT="leaking bucket"/>
<node CREATED="1659219735893" FOLDED="true" ID="ID_137391052" MODIFIED="1659219755987" TEXT="fixed window counter">
<node CREATED="1659219743749" ID="ID_54916783" MODIFIED="1659219751936" TEXT="burst edge  problem"/>
</node>
<node CREATED="1659219756804" ID="ID_1859229881" MODIFIED="1659219764688" TEXT="slidign window log"/>
<node CREATED="1659219767005" ID="ID_1155120124" MODIFIED="1659219774208" TEXT="sliding window counter"/>
</node>
<node CREATED="1659219645285" ID="ID_1945690145" MODIFIED="1659219663328" TEXT="scale?"/>
<node CREATED="1659219652549" ID="ID_1817381351" MODIFIED="1659219658049" TEXT="distributed?"/>
</node>
<node CREATED="1659219879788" FOLDED="true" ID="ID_348875356" MODIFIED="1659279762755" TEXT="high level">
<node CREATED="1659220011997" ID="ID_94078896" MODIFIED="1659220310487" TEXT="rule component (db, cache)"/>
<node CREATED="1659220312219" ID="ID_48633612" MODIFIED="1659220314223" TEXT="limiter"/>
</node>
<node CREATED="1659219941740" ID="ID_1031886715" MODIFIED="1659219951848" TEXT="example: lyft rate limiter"/>
</node>
<node CREATED="1659220386675" FOLDED="true" ID="ID_729051600" MODIFIED="1659279762755" POSITION="right" TEXT="consistency hashing">
<node CREATED="1659220482645" ID="ID_1788017174" MODIFIED="1659220488670" TEXT="hashing ring"/>
</node>
<node CREATED="1659220398915" FOLDED="true" ID="ID_1371050221" MODIFIED="1659279762756" POSITION="right" TEXT="distributed key-value store">
<node CREATED="1659220496330" FOLDED="true" ID="ID_220346603" MODIFIED="1659279762756" TEXT="data partition">
<node CREATED="1659220613875" ID="ID_1686218983" MODIFIED="1659220618790" TEXT="consistent hashing"/>
</node>
<node CREATED="1659220509868" FOLDED="true" ID="ID_1019678261" MODIFIED="1659279762756" TEXT="data replication">
<node CREATED="1659220606971" ID="ID_303755062" MODIFIED="1659220608414" TEXT="CAP"/>
</node>
<node CREATED="1659220513178" FOLDED="true" ID="ID_120549322" MODIFIED="1659279762756" TEXT="consistency">
<node CREATED="1659220562530" ID="ID_734173244" MODIFIED="1659220568014" TEXT="quorum consensus"/>
</node>
<node CREATED="1659220581771" FOLDED="true" ID="ID_1417343019" MODIFIED="1659279762756" TEXT="reconcile">
<node CREATED="1659220589042" ID="ID_168627729" MODIFIED="1659220592823" TEXT="vector clock"/>
</node>
<node CREATED="1659220520530" FOLDED="true" ID="ID_1757874169" MODIFIED="1659279762756" TEXT="failure detection">
<node CREATED="1659220570362" ID="ID_625171649" MODIFIED="1659220577583" TEXT="gossip"/>
</node>
<node CREATED="1659220533506" ID="ID_574112967" MODIFIED="1659220544126" TEXT="handel temp failure"/>
<node CREATED="1659220544646" ID="ID_1582445603" MODIFIED="1659220548479" TEXT="handle perm failure"/>
</node>
<node CREATED="1659220410675" FOLDED="true" ID="ID_900859231" MODIFIED="1659279762756" POSITION="right" TEXT="unique id generator">
<node CREATED="1659220426939" ID="ID_33216660" MODIFIED="1659220442246" TEXT="DB incrementer"/>
<node CREATED="1659220443515" ID="ID_668138042" MODIFIED="1659220445463" TEXT="UUID"/>
<node CREATED="1659220449771" ID="ID_934813986" MODIFIED="1659220458710" TEXT="Ticket Sevice"/>
<node CREATED="1659220460082" ID="ID_902264567" MODIFIED="1659220465438" TEXT="Twitter snowflack"/>
</node>
<node CREATED="1659220635322" ID="ID_296549103" MODIFIED="1659220668277" POSITION="right" TEXT="url shortener"/>
<node CREATED="1659277719760" ID="ID_592558690" MODIFIED="1659279776400" POSITION="right" TEXT="web crawler">
<node CREATED="1659277749440" FOLDED="true" ID="ID_1172551336" MODIFIED="1659279762756" TEXT="a web crawler is known as a robot or spider. it&apos;s widely used by search engines to discover new or updated content on the web.">
<node CREATED="1659277800960" FOLDED="true" ID="ID_73097317" MODIFIED="1659279762756" TEXT="search engine indexing">
<node CREATED="1659277859719" ID="ID_1707346070" MODIFIED="1659277874652" TEXT="collects web pages to create a alocal index for search engines"/>
</node>
<node CREATED="1659277813063" FOLDED="true" ID="ID_1532132046" MODIFIED="1659279762756" TEXT="web archiving">
<node CREATED="1659277829553" ID="ID_825827927" MODIFIED="1659277847196" TEXT="collecting information from the web to preserve data from future uses"/>
</node>
<node CREATED="1659277891871" FOLDED="true" ID="ID_1579599376" MODIFIED="1659279762756" TEXT="web mining">
<node CREATED="1659277898856" ID="ID_1651494131" MODIFIED="1659277933259" TEXT="explosive growth of the web presented unprecendented opportunity for data mining"/>
</node>
<node CREATED="1659277939150" FOLDED="true" ID="ID_1981146107" MODIFIED="1659279762756" TEXT="web monitoring">
<node CREATED="1659277953080" ID="ID_1631648541" MODIFIED="1659277975419" TEXT="monitor copy right and trademark infringement over the internet"/>
</node>
</node>
<node CREATED="1659278855461" FOLDED="true" ID="ID_1832178809" MODIFIED="1659279762757" TEXT="Scope">
<node CREATED="1659278860637" ID="ID_555346672" MODIFIED="1659278868352" TEXT="what is the main popurse"/>
<node CREATED="1659278937268" ID="ID_1218148298" MODIFIED="1659278945528" TEXT="how many collect per month"/>
<node CREATED="1659278991124" ID="ID_1667462259" MODIFIED="1659278998720" TEXT="what content include"/>
<node CREATED="1659279008228" ID="ID_1497274184" MODIFIED="1659279024232" TEXT="shall we consider newly added / updated web pages"/>
<node CREATED="1659279046100" ID="ID_1456449150" MODIFIED="1659279055728" TEXT="do we need to store the page?"/>
<node CREATED="1659279065564" ID="ID_578613579" MODIFIED="1659279074680" TEXT="page with duplicate content?"/>
</node>
<node CREATED="1659279122715" ID="ID_693561328" MODIFIED="1659279788539" TEXT="consideration">
<node CREATED="1659279151452" FOLDED="true" ID="ID_1037026650" MODIFIED="1659279762758" TEXT="scalability">
<node CREATED="1659279206667" ID="ID_1517936025" MODIFIED="1659279211224" TEXT="the web is huge"/>
</node>
<node CREATED="1659279223955" FOLDED="true" ID="ID_1128904142" MODIFIED="1659279762758" TEXT="robustness">
<node CREATED="1659279230371" ID="ID_1323724849" MODIFIED="1659279236207" TEXT="the web is full of traps"/>
</node>
<node CREATED="1659279159467" FOLDED="true" ID="ID_62088443" MODIFIED="1659279762758" TEXT="politeness">
<node CREATED="1659279214091" ID="ID_958027392" MODIFIED="1659279221688" TEXT="don&apos;t  make too many calls"/>
</node>
<node CREATED="1659279241275" FOLDED="true" ID="ID_300050280" MODIFIED="1659279762758" TEXT="extensibility">
<node CREATED="1659279253371" ID="ID_872710860" MODIFIED="1659279266871" TEXT="minimum effort to support new content types"/>
</node>
</node>
</node>
<node CREATED="1659277745824" ID="ID_1047158875" MODIFIED="1659277745824" POSITION="right" TEXT=""/>
</node>
</map>