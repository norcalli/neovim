local vim = vim
local evt = require'events'
local function read_new(...)
  evt.on_event("BufNewFile", ...)
  evt.on_event("BufRead", ...)
end

local bo = vim.bo
local function setf(ft)
  return function() bo.ft = ft end
end

local function firstline()
  return vim.api.nvim_buf_get_lines(0, 0, 1, false)[1] or ""
end
local function getlines(start, finish)
  return vim.api.nvim_buf_get_lines(0, start, finish+1, false)
end

read_new({ ext = {"..ch"} }, setf("chill"))
read_new({ ext = {".4gl", ".4gh", ".m4gl"} }, setf("fgl"))
read_new({ ext = {".8th"} }, setf("8th"))
read_new({ ext = {".a65"} }, setf("a65"))
read_new({ ext = {".aap"} }, setf("aap"))
read_new({ ext = {".abap"} }, setf("abap"))
read_new({ ext = {".abc"} }, setf("abc"))
read_new({ ext = {".abl"} }, setf("abel"))
read_new({ ext = {".ace", ".ACE"} }, setf("lace"))
read_new({ ext = {".action"} }, setf("privoxy"))
read_new({ ext = {".adb", ".ads", ".ada"} }, setf("ada"))
read_new({ ext = {".ado", ".do", ".imata", ".mata"} }, setf("stata"))
read_new({ ext = {".ahk"} }, setf("autohotkey"))
read_new({ ext = {".aml"} }, setf("aml"))
read_new({ ext = {".art"} }, setf("art"))
read_new({ ext = {".asciidoc", ".adoc"} }, setf("asciidoc"))
read_new({ ext = {".asn", ".asn1"} }, setf("asn"))
read_new({ ext = {".at"} }, setf("m4"))
read_new({ ext = {".atg"} }, setf("coco"))
read_new({ ext = {".atl", ".as"} }, setf("atlas"))
read_new({ ext = {".au3"} }, setf("autoit"))
read_new({ ext = {".ave"} }, setf("ave"))
read_new({ ext = {".awk"} }, setf("awk"))
read_new({ ext = {".bat", ".sys"} }, setf("dosbatch"))
read_new({ ext = {".bc"} }, setf("bc"))
read_new({ ext = {".bdf"} }, setf("bdf"))
read_new({ ext = {".bib"} }, setf("bib"))
read_new({ ext = {".bl"} }, setf("blank"))
read_new({ ext = {".bst"} }, setf("bst"))
read_new({ ext = {".builder", ".rxml", ".rjs"} }, setf("ruby"))
read_new({ ext = {".cabal"} }, setf("cabal"))
read_new({ ext = {".cbl", ".cob", ".lib"} }, setf("cobol"))
read_new({ ext = {".cdl"} }, setf("cdl"))
read_new({ ext = {".cfg"} }, setf("cfg"))
read_new({ ext = {".cfm", ".cfi", ".cfc"} }, setf("cf"))
read_new({ ext = {".chai"} }, setf("chaiscript"))
read_new({ ext = {".chf"} }, setf("ch"))
read_new({ ext = {".chopro", ".crd", ".cho", ".crdpro", ".chordpro"} }, setf("chordpro"))
read_new({ ext = {".chs"} }, setf("chaskell"))
read_new({ ext = {".clj", ".cljs", ".cljx", ".cljc"} }, setf("clojure"))
read_new({ ext = {".clp"} }, setf("jess"))
read_new({ ext = {".cm"} }, setf("voscm"))
read_new({ ext = {".cmod"} }, setf("cmod"))
read_new({ ext = {".con"} }, setf("cterm"))
read_new({ ext = {".crm"} }, setf("crm"))
read_new({ ext = {".cs"} }, setf("cs"))
read_new({ ext = {".csc"} }, setf("csc"))
read_new({ ext = {".csdl"} }, setf("csdl"))
read_new({ ext = {".csp", ".fdr"} }, setf("csp"))
read_new({ ext = {".csproj", ".csproj.user"} }, setf("xml"))
read_new({ ext = {".css"} }, setf("css"))
read_new({ ext = {".cu", ".cuh"} }, setf("cuda"))
read_new({ ext = {".cxx", ".c++", ".hh", ".hxx", ".hpp", ".ipp", ".moc", ".tcc", ".inl"} }, setf("cpp"))
read_new({ ext = {".cyn"} }, setf("cynpp"))
read_new({ ext = {".dart", ".drt"} }, setf("dart"))
read_new({ ext = {".dcd"} }, setf("dcd"))
read_new({ ext = {".dcl", ".icl"} }, setf("clean"))
read_new({ ext = {".def"} }, setf("def"))
read_new({ ext = {".desc"} }, setf("desc"))
read_new({ ext = {".diff", ".rej"} }, setf("diff"))
read_new({ ext = {".dot"} }, setf("dot"))
read_new({ ext = {".dpr"} }, setf("pascal"))
read_new({ ext = {".drac", ".drc", "lvs", "lpe"} }, setf("dracula"))
read_new({ ext = {".ds"} }, setf("datascript"))
read_new({ ext = {".dsl"} }, setf("dsl"))
read_new({ ext = {".dtd"} }, setf("dtd"))
read_new({ ext = {".dts", ".dtsi"} }, setf("dts"))
read_new({ ext = {".dylan"} }, setf("dylan"))
read_new({ ext = {".ec", ".EC"} }, setf("esqlc"))
read_new({ ext = {".ecd"} }, setf("ecd"))
read_new({ ext = {".eni"} }, setf("cl"))
read_new({ ext = {".erb", ".rhtml"} }, setf("eruby"))
read_new({ ext = {".erl", ".hrl", ".yaws"} }, setf("erlang"))
read_new({ ext = {".exp"} }, setf("expect"))
read_new({ ext = {".f", ".for", ".fortran", ".fpp", ".ftn", ".f77", ".f90", ".f95", ".f03", ".f08"} }, setf("fortran"))
read_new({ ext = {".factor"} }, setf("factor"))
read_new({ ext = {".fal"} }, setf("falcon"))
read_new({ ext = {".fan", ".fwt"} }, setf("fan"))
read_new({ ext = {".fb", ".bi"} }, setf("freebasic"))
read_new({ ext = {".feature"} }, setf("cucumber"))
read_new({ ext = {".fex", ".focexec"} }, setf("focexec"))
read_new({ ext = {".frt"} }, setf("reva"))
read_new({ ext = {".fs", ".ft", ".fth"} }, setf("forth"))
read_new({ ext = {".fsl"} }, setf("framescript"))
read_new({ ext = {".g"} }, setf("pccts"))
read_new({ ext = {".gemspec"} }, setf("ruby"))
read_new({ ext = {".go"} }, setf("go"))
read_new({ ext = {".gpi"} }, setf("gnuplot"))
read_new({ ext = {".gpr"} }, setf("ada"))
read_new({ ext = {".gradle", ".groovy"} }, setf("groovy"))
read_new({ ext = {".gretl"} }, setf("gretl"))
read_new({ ext = {".gs"} }, setf("grads"))
read_new({ ext = {".gsp"} }, setf("gsp"))
read_new({ ext = {".haml"} }, setf("haml"))
read_new({ ext = {".hb"} }, setf("hb"))
read_new({ ext = {".hdl", ".vhd", ".vhdl", ".vbe", ".vst"} }, setf("vhdl"))
read_new({ ext = {".hex", ".h32"} }, setf("hex"))
read_new({ ext = {".hgrc", "hgrc"} }, setf("cfg"))
read_new({ ext = {".hlp", ".ihlp", ".smcl"} }, setf("smcl"))
read_new({ ext = {".hs", ".hs-boot"} }, setf("haskell"))
read_new({ ext = {".hsc", ".hsm"} }, setf("hamster"))
read_new({ ext = {".ht"} }, setf("haste"))
read_new({ ext = {".html.m4"} }, setf("htmlm4"))
read_new({ ext = {".htpp"} }, setf("hastepreproc"))
read_new({ ext = {".htt", ".htb"} }, setf("httest"))
read_new({ ext = {".hws"} }, setf("hollywood"))
read_new({ ext = {".iba", ".ibi"} }, setf("ibasic"))
read_new({ ext = {".ice"} }, setf("slice"))
read_new({ ext = {".icn"} }, setf("icon"))
read_new({ ext = {".ijs"} }, setf("j"))
read_new({ ext = {".il", ".ils", ".cdf"} }, setf("skill"))
read_new({ ext = {".inf", ".INF"} }, setf("inform"))
read_new({ ext = {".ini"} }, setf("dosini"))
read_new({ ext = {".ino", ".pde"} }, setf("arduino"))
read_new({ ext = {".intr"} }, setf("dylanintr"))
read_new({ ext = {".isc", ".monk", ".ssc", ".tsc"} }, setf("monk"))
read_new({ ext = {".iss"} }, setf("iss"))
read_new({ ext = {".ist", ".mst"} }, setf("ist"))
read_new({ ext = {".it", ".ih"} }, setf("ppwiz"))
read_new({ ext = {".jal", ".JAL"} }, setf("jal"))
read_new({ ext = {".java", ".jav"} }, setf("java"))
read_new({ ext = {".jgr"} }, setf("jgraph"))
read_new({ ext = {".jj", ".jjt"} }, setf("javacc"))
read_new({ ext = {".jov", ".j73", ".jovial"} }, setf("jovial"))
read_new({ ext = {".jpl", ".jpr"} }, setf("jam"))
read_new({ ext = {".js", ".javascript", ".es", ".mjs", ".cjs"} }, setf("javascript"))
read_new({ ext = {".json", ".jsonp", ".webmanifest"} }, setf("json"))
read_new({ ext = {".jsp"} }, setf("jsp"))
read_new({ ext = {".jsx"} }, setf("javascriptreact"))
read_new({ ext = {".k"} }, setf("kwt"))
read_new({ ext = {".kix"} }, setf("kix"))
read_new({ ext = {".ks"} }, setf("kscript"))
read_new({ ext = {".kv"} }, setf("kivy"))
read_new({ ext = {".latex", ".sty", ".dtx", ".ltx", ".bbl"} }, setf("tex"))
read_new({ ext = {".latte", ".lte"} }, setf("latte"))
read_new({ ext = {".ld"} }, setf("ld"))
read_new({ ext = {".ldif"} }, setf("ldif"))
read_new({ ext = {".less"} }, setf("less"))
read_new({ ext = {".lex", ".l", ".lxx", ".l++"} }, setf("lex"))
read_new({ ext = {".lgt"} }, setf("logtalk"))
read_new({ ext = {".lhs"} }, setf("lhaskell"))
read_new({ ext = {".lid"} }, setf("dylanlid"))
read_new({ ext = {".liquid"} }, setf("liquid"))
read_new({ ext = {".lite", ".lt"} }, setf("lite"))
read_new({ ext = {".ll"} }, setf("lifelines"))
read_new({ ext = {".lot", ".lotos"} }, setf("lotos"))
read_new({ ext = {".lou", ".lout"} }, setf("lout"))
read_new({ ext = {".lpc", ".ulpc"} }, setf("lpc"))
read_new({ ext = {".lsl"} }, setf("lsl"))
read_new({ ext = {".lss"} }, setf("lss"))
read_new({ ext = {".lua"} }, setf("lua"))
read_new({ ext = {".m2", ".DEF", ".MOD", ".mi"} }, setf("modula2"))
read_new({ ext = {".man"} }, setf("nroff"))
read_new({ ext = {".map"} }, setf("map"))
read_new({ ext = {".mar"} }, setf("vmasm"))
read_new({ ext = {".markdown", ".mdown", ".mkd", ".mkdn", ".mdwn", ".md"} }, setf("markdown"))
read_new({ ext = {".mas", ".master"} }, setf("master"))
read_new({ ext = {".mason", ".mhtml", ".comp"} }, setf("mason"))
read_new({ ext = {".mch", ".ref", ".imp"} }, setf("b"))
read_new({ ext = {".mel"} }, setf("mel"))
read_new({ ext = {".mf"} }, setf("mf"))
read_new({ ext = {".mgl"} }, setf("mgl"))
read_new({ ext = {".mgp"} }, setf("mgp"))
read_new({ ext = {".mib", ".my"} }, setf("mib"))
read_new({ ext = {".mix", ".mixal"} }, setf("mix"))
read_new({ ext = {".mkii", ".mkiv", ".mkvi"} }, setf("context"))
read_new({ ext = {".mmp"} }, setf("mmp"))
read_new({ ext = {".mo", ".gdmo"} }, setf("gdmo"))
read_new({ ext = {".moo"} }, setf("moo"))
read_new({ ext = {".mp"} }, setf("mp"))
read_new({ ext = {".msc", ".msf"} }, setf("xmath"))
read_new({ ext = {".msql"} }, setf("msql"))
read_new({ ext = {".mu"} }, setf("mupad"))
read_new({ ext = {".mush"} }, setf("mush"))
read_new({ ext = {".mv", ".mpl", ".mws"} }, setf("maple"))
read_new({ ext = {".mysql"} }, setf("mysql"))
read_new({ ext = {".n1ql", ".nql"} }, setf("n1ql"))
read_new({ ext = {".nb"} }, setf("mma"))
read_new({ ext = {".ncf"} }, setf("ncf"))
read_new({ ext = {".ninja"} }, setf("ninja"))
read_new({ ext = {".nqc"} }, setf("nqc"))
read_new({ ext = {".nse"} }, setf("lua"))
read_new({ ext = {".nsi", ".nsh"} }, setf("nsis"))
read_new({ ext = {".obj"} }, setf("obj"))
read_new({ ext = {".occ"} }, setf("occam"))
read_new({ ext = {".odl", ".mof"} }, setf("msidl"))
read_new({ ext = {".or"} }, setf("openroad"))
read_new({ ext = {".ora"} }, setf("ora"))
read_new({ ext = {".p6", ".pm6", ".pl6"} }, setf("perl6"))
read_new({ ext = {".page"} }, setf("mallard"))
read_new({ ext = {".papp", ".pxml", ".pxsl"} }, setf("papp"))
read_new({ ext = {".pas"} }, setf("pascal"))
read_new({ ext = {".pc"} }, setf("proc"))
read_new({ ext = {".pcmk"} }, setf("pcmk"))
read_new({ ext = {".pdb"} }, setf("prolog"))
read_new({ ext = {".pdf"} }, setf("pdf"))
read_new({ ext = {".pike", ".pmod"} }, setf("pike"))
read_new({ ext = {".pld"} }, setf("cupl"))
read_new({ ext = {".pli", ".pl1"} }, setf("pli"))
read_new({ ext = {".plm", ".p36", ".pac"} }, setf("plm"))
read_new({ ext = {".plp"} }, setf("plp"))
read_new({ ext = {".pls", ".plsql"} }, setf("plsql"))
read_new({ ext = {".plx", ".al", ".psgi"} }, setf("perl"))
read_new({ ext = {".pml"} }, setf("promela"))
read_new({ ext = {".po", ".pot"} }, setf("po"))
read_new({ ext = {".pod"} }, setf("pod"))
read_new({ ext = {".pod6"} }, setf("pod6"))
read_new({ ext = {".pov"} }, setf("pov"))
read_new({ ext = {".ppd"} }, setf("ppd"))
read_new({ ext = {".proto"} }, setf("proto"))
read_new({ ext = {".ps", ".pfa", ".afm", ".eps", ".epsf", ".epsi", ".ai"} }, setf("postscr"))
read_new({ ext = {".psf"} }, setf("psf"))
read_new({ ext = {".pyx", ".pxd"} }, setf("pyrex"))
read_new({ ext = {".qc"} }, setf("c"))
read_new({ ext = {".rad", ".mat"} }, setf("radiance"))
read_new({ ext = {".raml"} }, setf("raml"))
read_new({ ext = {".rb", ".rbw"} }, setf("ruby"))
read_new({ ext = {".rc", ".rch"} }, setf("rc"))
read_new({ ext = {".rcp"} }, setf("pilrc"))
read_new({ ext = {".recipe"} }, setf("conaryrecipe"))
read_new({ ext = {".rego"} }, setf("rego"))
read_new({ ext = {".rex", ".orx", ".rxo", ".rxj", ".jrexx", ".rexxj", ".rexx", ".testGroup", ".testUnit"} }, setf("rexx"))
read_new({ ext = {".rib"} }, setf("rib"))
read_new({ ext = {".rnc"} }, setf("rnc"))
read_new({ ext = {".rng"} }, setf("rng"))
read_new({ ext = {".rockspec"} }, setf("lua"))
read_new({ ext = {".rpl"} }, setf("rpl"))
read_new({ ext = {".rs"} }, setf("rust"))
read_new({ ext = {".rst"} }, setf("rst"))
read_new({ ext = {".rtf"} }, setf("rtf"))
read_new({ ext = {".ru"} }, setf("ruby"))
read_new({ ext = {".run"} }, setf("ampl"))
read_new({ ext = {".s19", ".s28", ".s37", ".mot", ".srec"} }, setf("srec"))
read_new({ ext = {".sa"} }, setf("sather"))
read_new({ ext = {".sas"} }, setf("sas"))
read_new({ ext = {".sass"} }, setf("sass"))
read_new({ ext = {".sba"} }, setf("vb"))
read_new({ ext = {".sbt"} }, setf("sbt"))
read_new({ ext = {".scala"} }, setf("scala"))
read_new({ ext = {".sci", ".sce"} }, setf("scilab"))
read_new({ ext = {".scm", ".ss", ".rkt"} }, setf("scheme"))
read_new({ ext = {".score"} }, setf("slrnsc"))
read_new({ ext = {".scpt"} }, setf("applescript"))
read_new({ ext = {".scss"} }, setf("scss"))
read_new({ ext = {".sd"} }, setf("sd"))
read_new({ ext = {".sdc"} }, setf("sdc"))
read_new({ ext = {".sdl", ".pr"} }, setf("sdl"))
read_new({ ext = {".sed"} }, setf("sed"))
read_new({ ext = {".si"} }, setf("cuplsim"))
read_new({ ext = {".sig"} }, setf("lprolog"))
read_new({ ext = {".sim"} }, setf("simula"))
read_new({ ext = {".sin", ".s85"} }, setf("sinda"))
read_new({ ext = {".siv", ".sieve"} }, setf("sieve"))
read_new({ ext = {".sl"} }, setf("slang"))
read_new({ ext = {".slt"} }, setf("tsalt"))
read_new({ ext = {".sml"} }, setf("sml"))
read_new({ ext = {".smt", ".smith"} }, setf("smith"))
read_new({ ext = {".sno", ".spt"} }, setf("snobol4"))
read_new({ ext = {".sp", ".spice"} }, setf("spice"))
read_new({ ext = {".spec"} }, setf("spec"))
read_new({ ext = {".speedup", ".spdata", ".spd"} }, setf("spup"))
read_new({ ext = {".spy", ".spi"} }, setf("spyce"))
read_new({ ext = {".sqlj"} }, setf("sqlj"))
read_new({ ext = {".sqr", ".sqi"} }, setf("sqr"))
read_new({ ext = {".sst", ".ssm", ".ssi", ".-sst", "._sst"} }, setf("sisu"))
read_new({ ext = {".sst.meta", ".-sst.meta", "._sst.meta"} }, setf("sisu"))
read_new({ ext = {".st"} }, setf("st"))
read_new({ ext = {".stp"} }, setf("stp"))
read_new({ ext = {".strl"} }, setf("esterel"))
read_new({ ext = {".sv", ".svh"} }, setf("systemverilog"))
read_new({ ext = {".svg"} }, setf("svg"))
read_new({ ext = {".t.html"} }, setf("tilde"))
read_new({ ext = {".tak"} }, setf("tak"))
read_new({ ext = {".task"} }, setf("taskedit"))
read_new({ ext = {".tcl", ".tk", ".itcl", ".itk", ".jacl"} }, setf("tcl"))
read_new({ ext = {".tdf"} }, setf("ahdl"))
read_new({ ext = {".texinfo", ".texi", ".txi"} }, setf("texinfo"))
read_new({ ext = {".ti"} }, setf("terminfo"))
read_new({ ext = {".tlh"} }, setf("cpp"))
read_new({ ext = {".tli"} }, setf("tli"))
read_new({ ext = {".tmpl"} }, setf("template"))
read_new({ ext = {".toc"} }, setf("cdrtoc"))
read_new({ ext = {".tpl"} }, setf("smarty"))
read_new({ ext = {".tpm"} }, setf("xml"))
read_new({ ext = {".tpp"} }, setf("tpp"))
read_new({ ext = {".tr", ".nr", ".roff", ".tmac", ".mom"} }, setf("nroff"))
read_new({ ext = {".treetop"} }, setf("treetop"))
read_new({ ext = {".ts"} }, setf("typescript"))
read_new({ ext = {".tsscl"} }, setf("tsscl"))
read_new({ ext = {".tssgm"} }, setf("tssgm"))
read_new({ ext = {".tssop"} }, setf("tssop"))
read_new({ ext = {".tsx"} }, setf("typescriptreact"))
read_new({ ext = {".ttl"} }, setf("teraterm"))
read_new({ ext = {".tutor"} }, setf("tutor"))
read_new({ ext = {".twig"} }, setf("twig"))
read_new({ ext = {".tyb", ".typ", ".tyc", ".pkb", ".pks"} }, setf("sql"))
read_new({ ext = {".uc"} }, setf("uc"))
read_new({ ext = {".ui"} }, setf("xml"))
read_new({ ext = {".uit", ".uil"} }, setf("uil"))
read_new({ ext = {".v"} }, setf("verilog"))
read_new({ ext = {".va", ".vams"} }, setf("verilogams"))
read_new({ ext = {".vb", ".vbs", ".dsm", ".ctl"} }, setf("vb"))
read_new({ ext = {".vc", ".ev", ".sum", ".errsum"} }, setf("hercules"))
read_new({ ext = {".vr", ".vri", ".vrh"} }, setf("vera"))
read_new({ ext = {".vroom"} }, setf("vroom"))
read_new({ ext = {".vue"} }, setf("vue"))
read_new({ ext = {".wast", ".wat"} }, setf("wast"))
read_new({ ext = {".wbt"} }, setf("winbatch"))
read_new({ ext = {".wm"} }, setf("webmacro"))
read_new({ ext = {".wml"} }, setf("wml"))
read_new({ ext = {".wpl"} }, setf("xml"))
read_new({ ext = {".wrl"} }, setf("vrml"))
read_new({ ext = {".wrm"} }, setf("acedb"))
read_new({ ext = {".wsdl"} }, setf("xml"))
read_new({ ext = {".wsml"} }, setf("wsml"))
read_new({ ext = {".x"} }, setf("rpcgen"))
read_new({ ext = {".xhtml", ".xht"} }, setf("xhtml"))
read_new({ ext = {".xlf"} }, setf("xml"))
read_new({ ext = {".xliff"} }, setf("xml"))
read_new({ ext = {".xmi"} }, setf("xml"))
read_new({ ext = {".xom", ".xin"} }, setf("omnimark"))
read_new({ ext = {".xq", ".xql", ".xqm", ".xquery", ".xqy"} }, setf("xquery"))
read_new({ ext = {".xs"} }, setf("xs"))
read_new({ ext = {".xsd"} }, setf("xsd"))
read_new({ ext = {".xsl", ".xslt"} }, setf("xslt"))
read_new({ ext = {".xul"} }, setf("xml"))
read_new({ ext = {".yaml", ".yml"} }, setf("yaml"))
read_new({ ext = {".yy", ".yxx", ".y++"} }, setf("yacc"))
read_new({ ext = {".z8a"} }, setf("z8a"))
read_new({ ext = {".zsh"} }, setf("zsh"))
read_new({ ext = {".zu"} }, setf("zimbu"))
read_new({ ext = {".zut"} }, setf("zimbutempl"))
read_new({ ext = {"/.aptitude/config"} }, setf("aptconf"))
read_new({ ext = {"/.config/git/config"} }, setf("gitconfig"))
read_new({ ext = {"/.gnupg/gpg.conf"} }, setf("gpg"))
read_new({ ext = {"/.gnupg/options"} }, setf("gpg"))
read_new({ ext = {"/.icewm/menu"} }, setf("icemenu"))
read_new({ ext = {"/boot/grub/menu.lst", "/boot/grub/grub.conf", "/etc/grub.conf"} }, setf("grub"))
read_new({ ext = {"/debian/control"} }, setf("debcontrol"))
read_new({ ext = {"/debian/copyright"} }, setf("debcopyright"))
read_new({ ext = {"/etc/apt/sources.list"} }, setf("debsources"))
read_new({ ext = {"/etc/dnsmasq.conf"} }, setf("dnsmasq"))
read_new({ ext = {".vim", ".vba"}; fullname = {".exrc", "_exrc"} }, setf("vim"))
read_new({ ext = {"/etc/a2ps.cfg"}; fullname = {"a2psrc", ".a2psrc"} }, setf("a2ps"))
-- read_new(function(input) if input:match(".*/etc/a2ps/.*%.cfg") then bo.ft = "a2ps" end end)
--   au BufNewFile,BufRead */etc/Muttrc.d/* call s:StarSetf('muttrc')
-- read_new(function(input) if bo.ft == '' and input:match(".*/etc/Muttrc%.d/.*") then bo.ft = "muttrc" end end)
-- read_new(function(input) if bo.ft == '' and input:match(vim.en.VIMRUNTIME.."/doc/.*%.txt") then bo.ft = "help" end end)
read_new({ ext = {".latex", ".sty", ".dtx", ".ltx", ".bbl"} }, setf("tex"))
-- dist#ft#FTtex
read_new({ ext = {".tex"} }, function(input)
  local line = firstline()
  local format = line:match("^&%s*(%a+)")
  if format then
    format = format:gsub("pdf", "")
    format = ({tex='latex';plaintex='plain'})[format] or format
  elseif input:match("tex/context/.*/.*%.tex") then
    format = 'context'
  else
    format = vim.g.tex_flavor or 'plain'
    local pos = vim.api.nvim_win_get_cursor(0)
    vim.api.nvim_win_set_cursor(0, {1, 0})
    local firstNC = vim.fn.search('^\\s*[^[:space:]%]', 'c', 1000)
    if firstNC then
      local lpat = [[documentclass\>\|usepackage\>\|begin{\|newcommand\>\|renewcommand\>]]
      local cpat = [[start\a\+\|setup\a\+\|usemodule\|enablemode\|enableregime\|setvariables\|useencoding\|usesymbols\|stelle\a\+\|verwende\a\+\|stel\a\+\|gebruik\a\+\|usa\a\+\|imposta\a\+\|regle\a\+\|utilisemodule\>]]
      local kwline = vim.fn.search([[^\s*\\\%(]]..lpat..[[\)\|^\s*\\\(]]..cpat..[[\)]], 'cnp', firstNC + 1000)
      if kwline == 1 then
        format = 'latex'
      elseif kwline == 2 then
        format = 'context'
      end
    end
    vim.api.nvim_win_set_cursor(0, pos)
  end
  if format == 'plain' then
    bo.ft = 'plaintex'
  elseif format == 'context' then
    bo.ft = 'context'
  else
    bo.ft = 'tex'
  end
end)
read_new({ext = {".c", ".h"}}, setf("c"))
-- read_new({ext = ".c"}, function(input)
--   if vim.g.lpc_syntax_for_c then
--     for _, line in ipairs(getlines(0, 12)) do
--       if getline(lnum) =~# '^\(//\|inherit\|private\|protected\|nosave\|string\|object\|mapping\|mixed\)'
--     end
--     let lnum = 1
--     while lnum <= 12
--       if getline(lnum) =~# '^\(//\|inherit\|private\|protected\|nosave\|string\|object\|mapping\|mixed\)'
--         setf lpc
--         return
--       endif
--       let lnum = lnum + 1
--     endwhile
--   endif
--   setf c
-- end)

-- for v in vim.gsplit([==[
--   au BufEnter *.xpm2 setf xpm2
--   au BufNewFile,BufRead $VIMRUNTIME/doc/*.txt setf help
--   au BufNewFile,BufRead *.NS[ACGLMNPS] setf natural
--   au BufNewFile,BufRead *.[Oo][Pp][Ll] setf opl
--   au BufNewFile,BufRead *.[mi][3g] setf modula3
--   au BufNewFile,BufRead *.bzl,WORKSPACE,BUILD.bazel setf bzl
--   au BufNewFile,BufRead *.desktop,.directory setf desktop
--   au BufNewFile,BufRead *.ed\(f\|if\|o\) setf edif
--   au BufNewFile,BufRead *.ged,lltxxxxx.txt setf gedcom
--   au BufNewFile,BufRead *.git/config,.gitconfig,/etc/gitconfig setf gitconfig
--   au BufNewFile,BufRead *.gp,.gprc setf gp
--   au BufNewFile,BufRead *.hog,snort.conf,vision.conf setf hog
--   au BufNewFile,BufRead *.mc call dist#ft#McSetf()
--   au BufNewFile,BufRead *.ml,*.mli,*.mll,*.mly,.ocamlinit setf ocaml
--   au BufNewFile,BufRead *.php,*.php\d,*.phtml,*.ctp setf php
--   au BufNewFile,BufRead *.properties,*.properties_??,*.properties_??_?? setf jproperties
--   au BufNewFile,BufRead *.properties_??_??_* call s:StarSetf('jproperties')
--   au BufNewFile,BufRead *.py,*.pyw,.pythonstartup,.pythonrc,*.ptl,*.pyi setf python
--   au BufNewFile,BufRead *.text,README setf text
--   au BufNewFile,BufRead *.tf,.tfrc,tfrc setf tf
--   au BufNewFile,BufRead *.vhdl_[0-9]* call s:StarSetf('vhdl')
--   au BufNewFile,BufRead *.ws[fc] setf wsh
--   au BufNewFile,BufRead */.cmus/{autosave,rc,command-history,*.theme} setf cmusrc
--   au BufNewFile,BufRead */.config/upstart/*.conf setf upstart
--   au BufNewFile,BufRead */.config/upstart/*.override setf upstart
--   au BufNewFile,BufRead */.fvwm/* call s:StarSetf('fvwm')
--   au BufNewFile,BufRead */.gitconfig.d/*,/etc/gitconfig.d/* call s:StarSetf('gitconfig')
--   au BufNewFile,BufRead */.init/*.conf,*/.init/*.override setf upstart
--   au BufNewFile,BufRead */LiteStep/*/*.rc setf litestep
--   au BufNewFile,BufRead */cmus/{rc,*.theme} setf cmusrc
--   au BufNewFile,BufRead */etc/apache2/*.conf*,*/etc/apache2/conf.*/*,*/etc/apache2/mods-*/*,*/etc/apache2/sites-*/*,*/etc/httpd/conf.d/*.conf* call s:StarSetf('apache')
--   au BufNewFile,BufRead */etc/apache2/sites-*/*.com setf apache
--   au BufNewFile,BufRead */etc/apt/apt.conf.d/{[-_[:alnum:]]\+,[-_.[:alnum:]]\+.conf} setf aptconf
--   au BufNewFile,BufRead */etc/apt/sources.list.d/*.list setf debsources
--   au BufNewFile,BufRead */etc/blkid.tab,*/etc/blkid.tab.old setf xml
--   au BufNewFile,BufRead */etc/cdrdao.conf,*/etc/defaults/cdrdao,*/etc/default/cdrdao,.cdrdao setf cdrdaoconf
--   au BufNewFile,BufRead */etc/dnsmasq.d/* call s:StarSetf('dnsmasq')
--   au BufNewFile,BufRead */etc/elinks.conf,*/.elinks/elinks.conf setf elinks
--   au BufNewFile,BufRead */etc/group,*/etc/group-,*/etc/group.edit,*/etc/gshadow,*/etc/gshadow-,*/etc/gshadow.edit,*/var/backups/group.bak,*/var/backups/gshadow.bak setf group
--   au BufNewFile,BufRead */etc/host.conf setf hostconf
--   au BufNewFile,BufRead */etc/hosts.allow,*/etc/hosts.deny setf hostsaccess
--   au BufNewFile,BufRead */etc/init/*.conf,*/etc/init/*.override setf upstart
--   au BufNewFile,BufRead */etc/initng/*/*.i,*.ii setf initng
--   au BufNewFile,BufRead */etc/libao.conf,*/.libao setf libao
--   au BufNewFile,BufRead */etc/limits,*/etc/*limits.conf,*/etc/*limits.d/*.conf setf limits
--   au BufNewFile,BufRead */etc/logcheck/*.d*/* call s:StarSetf('logcheck')
--   au BufNewFile,BufRead */etc/login.access setf loginaccess
--   au BufNewFile,BufRead */etc/login.defs setf logindefs
--   au BufNewFile,BufRead */etc/mail/aliases,*/etc/aliases setf mailaliases
--   au BufNewFile,BufRead */etc/man.conf,man.config setf manconf
--   au BufNewFile,BufRead */etc/modprobe.* call s:StarSetf('modconf')
--   au BufNewFile,BufRead */etc/modules.conf,*/etc/modules,*/etc/conf.modules setf modconf
--   au BufNewFile,BufRead */etc/nanorc,*.nanorc setf nanorc
--   au BufNewFile,BufRead */etc/pam.conf setf pamconf
--   au BufNewFile,BufRead */etc/pam.d/* call s:StarSetf('pamconf')
--   au BufNewFile,BufRead */etc/passwd,*/etc/passwd-,*/etc/passwd.edit,*/etc/shadow,*/etc/shadow-,*/etc/shadow.edit,*/var/backups/passwd.bak,*/var/backups/shadow.bak setf passwd
--   au BufNewFile,BufRead */etc/pinforc,*/.pinforc setf pinfo
--   au BufNewFile,BufRead */etc/profile,.profile,*.sh,*.env call dist#ft#SetFileTypeSH(getline(1))
--   au BufNewFile,BufRead */etc/proftpd/*.conf*,*/etc/proftpd/conf.*/* call s:StarSetf('apachestyle')
--   au BufNewFile,BufRead */etc/protocols setf protocols
--   au BufNewFile,BufRead */etc/sensors.conf,*/etc/sensors3.conf setf sensors
--   au BufNewFile,BufRead */etc/serial.conf setf setserial
--   au BufNewFile,BufRead */etc/services setf services
--   au BufNewFile,BufRead */etc/slp.conf setf slpconf
--   au BufNewFile,BufRead */etc/slp.reg setf slpreg
--   au BufNewFile,BufRead */etc/slp.spi setf slpspi
--   au BufNewFile,BufRead */etc/sudoers,sudoers.tmp setf sudoers
--   au BufNewFile,BufRead */etc/sysctl.conf,*/etc/sysctl.d/*.conf setf sysctl
--   au BufNewFile,BufRead */etc/udev/cdsymlinks.conf setf sh
--   au BufNewFile,BufRead */etc/udev/permissions.d/*.permissions setf udevperm
--   au BufNewFile,BufRead */etc/udev/udev.conf setf udevconf
--   au BufNewFile,BufRead */etc/updatedb.conf setf updatedb
--   au BufNewFile,BufRead */etc/xdg/menus/*.menu setf xml
--   au BufNewFile,BufRead */etc/xinetd.conf setf xinetd
--   au BufNewFile,BufRead */etc/xinetd.d/* call s:StarSetf('xinetd')
--   au BufNewFile,BufRead */etc/yum.conf setf dosini
--   au BufNewFile,BufRead */etc/yum.repos.d/* call s:StarSetf('dosini')
--   au BufNewFile,BufRead */gitolite-admin/conf/* call s:StarSetf('gitolite')
--   au BufNewFile,BufRead */log/{auth,cron,daemon,debug,kern,lpr,mail,messages,news/news,syslog,user}{,.log,.err,.info,.warn,.crit,.notice}{,.[0-9]*,-[0-9]*} setf messages
--   au BufNewFile,BufRead */named/db.*,*/bind/db.* call s:StarSetf('bindzone')
--   au BufNewFile,BufRead */systemd/*.{automount,mount,path,service,socket,swap,target,timer} setf systemd
--   au BufNewFile,BufRead */tmp/lltmp* call s:StarSetf('gedcom')
--   au BufNewFile,BufRead */usr/*/gnupg/options.skel setf gpg
--   au BufNewFile,BufRead */usr/share/upstart/*.conf setf upstart
--   au BufNewFile,BufRead */usr/share/upstart/*.override setf upstart
--   au BufNewFile,BufRead *Eterm/*.cfg setf eterm
--   au BufNewFile,BufRead *Xmodmap setf xmodmap
--   au BufNewFile,BufRead *[mM]akefile,*.mk,*.mak,*.dsp setf make
--   au BufNewFile,BufRead *\,v setf rcs
--   au BufNewFile,BufRead *asterisk*/*voicemail.conf* call s:StarSetf('asteriskvm')
--   au BufNewFile,BufRead *asterisk/*.conf* call s:StarSetf('asterisk')
--   au BufNewFile,BufRead *baseq[2-3]/*.cfg,*id1/*.cfg setf quake
--   au BufNewFile,BufRead *enlightenment/*.cfg setf c
--   au BufNewFile,BufRead *esmtprc setf esmtprc
--   au BufNewFile,BufRead *quake[1-3]/*.cfg setf quake
--   au BufNewFile,BufRead *vimrc* call s:StarSetf('vim')
--   au BufNewFile,BufRead *xmodmap* call s:StarSetf('xmodmap')
--   au BufNewFile,BufRead .Xdefaults,.Xpdefaults,.Xresources,xdm-config,*.ad setf xdefaults
--   au BufNewFile,BufRead .arch-inventory,=tagging-method setf arch
--   au BufNewFile,BufRead .asoundrc,*/usr/share/alsa/alsa.conf,*/etc/asound.conf setf alsaconf
--   au BufNewFile,BufRead .bashrc*,.bash[_-]profile*,.bash[_-]logout*,.bash[_-]aliases*,bash-fc[-.]*,,PKGBUILD* call dist#ft#SetFileTypeSH("bash")
--   au BufNewFile,BufRead .bashrc,bashrc,bash.bashrc,.bash[_-]profile,.bash[_-]logout,.bash[_-]aliases,bash-fc[-.],*.bash,*/{,.}bash[_-]completion{,.d,.sh}{,/*},*.ebuild,*.eclass,PKGBUILD call dist#ft#SetFileTypeSH("bash")
--   au BufNewFile,BufRead .cvsrc setf cvsrc
--   au BufNewFile,BufRead .dir_colors,.dircolors,*/etc/DIR_COLORS setf dircolors
--   au BufNewFile,BufRead .editorconfig setf dosini
--   au BufNewFile,BufRead .fetchmailrc setf fetchmail
--   au BufNewFile,BufRead .gdbinit setf gdb
--   au BufNewFile,BufRead .gitmodules,*.git/modules/*/config setf gitconfig
--   au BufNewFile,BufRead .gitsendemail.msg.?????? setf gitsendemail
--   au BufNewFile,BufRead .gtkrc*,gtkrc* call s:StarSetf('gtkrc')
--   au BufNewFile,BufRead .gtkrc,gtkrc setf gtkrc
--   au BufNewFile,BufRead .htaccess,*/etc/httpd/*.conf setf apache
--   au BufNewFile,BufRead .indent.pro setf indent
--   au BufNewFile,BufRead .inputrc,inputrc setf readline
--   au BufNewFile,BufRead .irbrc,irbrc setf ruby
--   au BufNewFile,BufRead .kshrc* call dist#ft#SetFileTypeSH("ksh")
--   au BufNewFile,BufRead .kshrc,*.ksh call dist#ft#SetFileTypeSH("ksh")
--   au BufNewFile,BufRead .mailcap,mailcap setf mailcap
--   au BufNewFile,BufRead .mutt{ng,}rc*,*/.mutt{ng,}/mutt{ng,}rc* call s:StarSetf('muttrc')
--   au BufNewFile,BufRead .neomuttrc*,*/.neomutt/neomuttrc* call s:StarSetf('neomuttrc')
--   au BufNewFile,BufRead .netrc setf netrc
--   au BufNewFile,BufRead .pinerc,pinerc,.pinercex,pinercex setf pine
--   au BufNewFile,BufRead .povrayrc setf povini
--   au BufNewFile,BufRead .procmail,.procmailrc setf procmail
--   au BufNewFile,BufRead .profile* call dist#ft#SetFileTypeSH(getline(1))
--   au BufNewFile,BufRead .ratpoisonrc,ratpoisonrc setf ratpoison
--   au BufNewFile,BufRead .reminders* call s:StarSetf('remind')
--   au BufNewFile,BufRead .reminders,*.remind,*.rem setf remind
--   au BufNewFile,BufRead .screenrc,screenrc setf screen
--   au BufNewFile,BufRead .slrnrc setf slrnrc
--   au BufNewFile,BufRead .tcshrc* call dist#ft#SetFileTypeShell("tcsh")
--   au BufNewFile,BufRead .tcshrc,*.tcsh,tcsh.tcshrc,tcsh.login call dist#ft#SetFileTypeShell("tcsh")
--   au BufNewFile,BufRead .tidyrc,tidyrc setf tidy
--   au BufNewFile,BufRead .viminfo,_viminfo setf viminfo
--   au BufNewFile,BufRead .wgetrc,wgetrc setf wget
--   au BufNewFile,BufRead .zprofile,*/etc/zprofile,.zfbfmarks setf zsh
--   au BufNewFile,BufRead .zsh*,.zlog*,.zcompdump* call s:StarSetf('zsh')
--   au BufNewFile,BufRead .zshrc,.zshenv,.zlogin,.zlogout,.zcompdump setf zsh
--   au BufNewFile,BufRead /etc/hostname.* call s:StarSetf('config')
--   au BufNewFile,BufRead /etc/systemd/system/*.d/*.conf setf systemd
--   au BufNewFile,BufRead /etc/systemd/system/*.d/.#* setf systemd
--   au BufNewFile,BufRead CMakeLists.txt,*.cmake,*.cmake.in setf cmake
--   au BufNewFile,BufRead COMMIT_EDITMSG,MERGE_MSG,TAG_EDITMSG setf gitcommit
--   au BufNewFile,BufRead Dockerfile,*.Dockerfile setf dockerfile
--   au BufNewFile,BufRead Gemfile setf ruby
--   au BufNewFile,BufRead Kconfig,Kconfig.debug setf kconfig
--   au BufNewFile,BufRead Kconfig.* call s:StarSetf('kconfig')
--   au BufNewFile,BufRead Mutt{ng,}rc setf muttrc
--   au BufNewFile,BufRead Neomuttrc setf neomuttrc
--   au BufNewFile,BufRead Pipfile setf config
--   au BufNewFile,BufRead Pipfile.lock setf json
--   au BufNewFile,BufRead Prl*.*,JAM*.* call s:StarSetf('jam')
--   au BufNewFile,BufRead Xresources*,*/app-defaults/*,*/Xresources/* call s:StarSetf('xdefaults')
--   au BufNewFile,BufRead [mM]akefile* call s:StarSetf('make')
--   au BufNewFile,BufRead [mM]akefile.am,GNUmakefile.am setf automake
--   au BufNewFile,BufRead [rR]akefile* call s:StarSetf('ruby')
--   au BufNewFile,BufRead [rR]antfile,*.rant,[rR]akefile,*.rake setf ruby
--   au BufNewFile,BufRead access.conf*,apache.conf*,apache2.conf*,httpd.conf*,srm.conf* call s:StarSetf('apache')
--   au BufNewFile,BufRead apt.conf setf aptconf
--   au BufNewFile,BufRead auto.master setf conf
--   au BufNewFile,BufRead build.xml setf ant
--   au BufNewFile,BufRead bzr_log.* setf bzr
--   au BufNewFile,BufRead calendar setf calendar
--   au BufNewFile,BufRead catalog setf catalog
--   au BufNewFile,BufRead cfengine.conf setf cfengine
--   au BufNewFile,BufRead configure.in,configure.ac setf config
--   au BufNewFile,BufRead crontab,crontab.*,*/etc/cron.d/* call s:StarSetf('crontab')
--   au BufNewFile,BufRead cvs\d\+ setf cvs
--   au BufNewFile,BufRead denyhosts.conf setf denyhosts
--   au BufNewFile,BufRead dict.conf,.dictrc setf dictconf
--   au BufNewFile,BufRead dictd.conf setf dictdconf
--   au BufNewFile,BufRead drac.* call s:StarSetf('dracula')
--   au BufNewFile,BufRead exim.conf setf exim
--   au BufNewFile,BufRead exports setf exports
--   au BufNewFile,BufRead fdrupstream.log,upstream.log\c,upstream.*.log\c,*.upstream.log\c,UPSTREAM-*.log\c setf upstreamlog
--   au BufNewFile,BufRead fglrxrc setf xml
--   au BufNewFile,BufRead filter-rules setf elmfilt
--   au BufNewFile,BufRead fstab,mtab setf fstab
--   au BufNewFile,BufRead git-rebase-todo setf gitrebase
--   au BufNewFile,BufRead gitolite.conf setf gitolite
--   au BufNewFile,BufRead gkrellmrc,gkrellmrc_? setf gkrellmrc
--   au BufNewFile,BufRead gnashrc,.gnashrc,gnashpluginrc,.gnashpluginrc setf gnash
--   au BufNewFile,BufRead hg-editor-*.txt setf hgcommit
--   au BufNewFile,BufRead indentrc setf indent
--   au BufNewFile,BufRead inittab setf inittab
--   au BufNewFile,BufRead ipf.conf,ipf6.conf,ipf.rules setf ipfilter
--   au BufNewFile,BufRead lftp.conf,.lftprc,*lftp/rc setf lftp
--   au BufNewFile,BufRead lilo.conf setf lilo
--   au BufNewFile,BufRead lilo.conf* call s:StarSetf('lilo')
--   au BufNewFile,BufRead lynx.cfg setf lynx
--   au BufNewFile,BufRead main.cf setf pfmain
--   au BufNewFile,BufRead meson.build,meson_options.txt setf meson
--   au BufNewFile,BufRead mplayer.conf,*/.mplayer/config setf mplayerconf
--   au BufNewFile,BufRead mrxvtrc,.mrxvtrc setf mrxvtrc
--   au BufNewFile,BufRead mutt{ng,}rc*,Mutt{ng,}rc* call s:StarSetf('muttrc')
--   au BufNewFile,BufRead named*.conf,rndc*.conf,rndc*.key setf named
--   au BufNewFile,BufRead named.root setf bindzone
--   au BufNewFile,BufRead neomuttrc*,Neomuttrc* call s:StarSetf('neomuttrc')
--   au BufNewFile,BufRead pf.conf setf pf
--   au BufNewFile,BufRead proftpd.conf* call s:StarSetf('apachestyle')
--   au BufNewFile,BufRead reportbug-* call s:StarSetf('mail')
--   au BufNewFile,BufRead resolv.conf setf resolv
--   au BufNewFile,BufRead robots.txt setf robots
--   au BufNewFile,BufRead sbclrc,.sbclrc setf lisp
--   au BufNewFile,BufRead sendmail.cf setf sm
--   au BufNewFile,BufRead sgml.catalog* call s:StarSetf('catalog')
--   au BufNewFile,BufRead smb.conf setf samba
--   au BufNewFile,BufRead snd.\d\+,.letter,.letter.\d\+,.followup,.article,.article.\d\+,pico.\d\+,mutt{ng,}-*-\w\+,mutt[[:alnum:]_-]\\\{6\},neomutt-*-\w\+,neomutt[[:alnum:]_-]\\\{6\},ae\d\+.txt,/tmp/SLRN[0-9A-Z.]\+,*.eml setf mail
--   au BufNewFile,BufRead squid.conf setf squid
--   au BufNewFile,BufRead ssh_config,*/.ssh/config setf sshconfig
--   au BufNewFile,BufRead sshd_config setf sshdconfig
--   au BufNewFile,BufRead svn-commit*.tmp setf svn
--   au BufNewFile,BufRead tags setf tags
--   au BufNewFile,BufRead texmf.cnf setf texmf
--   au BufNewFile,BufRead tmac.* call s:StarSetf('nroff')
--   au BufNewFile,BufRead trustees.conf setf trustees
--   au BufNewFile,BufRead upstream.dat\c,upstream.*.dat\c,*.upstream.dat\c setf upstreamdat
--   au BufNewFile,BufRead upstreaminstall.log\c,upstreaminstall.*.log\c,*.upstreaminstall.log\c setf upstreaminstalllog
--   au BufNewFile,BufRead usserver.log\c,usserver.*.log\c,*.usserver.log\c setf usserverlog
--   au BufNewFile,BufRead usw2kagt.log\c,usw2kagt.*.log\c,*.usw2kagt.log\c setf usw2kagtlog
--   au BufNewFile,BufRead vgrindefs setf vgrindefs
--   au BufNewFile,BufRead wvdial.conf,.wvdialrc setf wvdial
--   au BufNewFile,BufRead xorg.conf,xorg.conf-4 let b:xf86conf_xfree86_version = 4 | setf xf86conf
--   au BufNewFile,BufRead zsh*,zlog* call s:StarSetf('zsh')
--   au BufNewFile,BufRead {,.}gitolite.rc,example.gitolite.rc setf perl
--   au BufNewFile,BufRead {.,}tmux*.conf setf tmux
--   au BufNewFile,BufRead {neo,}mutt[[:alnum:]._-]\\\{6\} setf mail
--   au BufNewFile,BufRead {pending,completed,undo}.data setf taskdata
-- ]==], '\n', true) do
--   vim.cmd(v)
-- end
