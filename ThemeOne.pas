{o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o}

{Theme One Source Code � MIT License}

{o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o}

{ Theme/Theme 1/Theme One is licensed under the MIT License }
{ Copyright (c) 1984-2018 Jon Awbrey }

{ compiler: turbo pascal, version 5.0, }
{ (c) 1987, 1988 borland international }
{$M 53248,0,655360} { stack and heap   }
{$B+} { boolean complete evaluation on }

{ project: theme}
{ segment: learner + modeler}
{ version: 1}

program theme;

uses    crt;

const   links = '(' ;  right = ')' ;  enter = ^m ;  ender = ^z ;
        comma = ',' ;  point = '.' ;  estab = ^i ;  escap = ^[ ;
        blank = ' ' ;  quote = '`' ;  elide = ^h ;  erase = ^x ;
        aster = '*' ;  minus = '-' ;  empty = '' ;    nul = #0 ;

type    mode = (null, moot, firm);
        cast = set of char;
        numb = 0..maxint;
        info = string;

        idea = ^form;
        form = record
                sign: char;
                as, up, on, by: idea;
                code: numb
               end;

var     here: idea;
        size,
        trim: numb;
         con: text;

procedure video (what: mode);
begin
 case what of
  null: textcolor (0);
  moot: textcolor (7);
  firm: textcolor (14)
 end
end;

procedure stop;
var mark: char;
begin
 write ('< press any key > ');  repeat until keypressed;
 mark := readkey
end;

function just (this: idea): idea;
begin
 just := nil
end;

function clear (this: idea): idea;
begin
 clear := this;  clrscr
end;

function clean (this: idea): idea;
begin
 clean := just (clear (this))
end;

function flint (this: idea): idea;
var here: idea;

function hold (this: idea): idea;
begin
 hold := this;  stop
end;

function wait (this: idea): idea;
begin
 wait := this;  delay (256)
end;

function dim (this: idea): idea;
begin
 dim := this;  video (moot)
end;

function vid (this: idea): idea;
begin
 vid := this;  video (firm)
end;

function dash (this: idea): idea;
begin
 dash := this;  clreol
end;

function lash (this: idea): idea;
begin
 lash := this;  write (enter)
end;

function quash (this: idea): idea;
begin
 quash := dash (lash (this))
end;

function space (var thou: text;
		    this: idea): idea;
begin
 space := this;  write (thou, blank)
end;

function skip (var thou: text;
                    tab: numb;
                   this: idea): idea;
var col: numb;
begin
 skip := this;  for col := 1 to tab do write (thou, blank)
end;

function pass (var thou: text;
                   line: info;
                   this: idea): idea;
begin
 pass := this;  write (thou, line)
end;

function turn (this: idea): idea;
begin
 turn := this;  writeln
end;

function verse (var thou: text;
                    line: info;
                    this: idea): idea;
begin
 verse := this;  writeln (thou, line)
end;

function return (var thou: text;
		     this: idea): idea;
begin
 return := this;  writeln (thou)
end;

function tort (this: idea): idea;
begin
 tort := this;  write ('))')
end;

function till (this: idea): idea;
begin
 till := this;  write (' ... ')
end;

function at (row, col: numb;
                 this: idea): idea;
begin
 at := this;  gotoxy (col, row)
end;

{Comment out the check function.}
{The memavail function has been removed from Pascal}
{function check (this: idea): idea;}
{begin}
 {check := this;  write (memavail, ' bytes')}
{end;}

{Comment out the memcheck function}
{The memavail function has been removed from Pascal}
{function memcheck (this: idea): idea;}
{begin}
 {memcheck := at (1, 48, this);}
 {write ('< free memory : ', memavail : 8, ' bytes >')}
{end;}

function upon (thus, that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if thus <> nil then here := that else here := this;
 upon := here
end;

function obvert (that, this: idea): idea;
begin
 obvert := that
end;

function revert (that, this: idea): idea;
begin
 revert := this
end;

function covert (that, this: idea): idea;
begin
 covert := upon (that, nil, this)
end;

function divert (that, this: idea): idea;
begin
 divert := upon (that, this, nil)
end;

function equity (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then if that <> nil then
  if that = this then here := this;
 equity := here
end;

function tap (var thou: text): char;
var mark: char;
begin
 read (thou, mark);
 tap := mark
end;

function pat (var thou: text;
                  mark: char): char;
begin
 write (thou, mark);
 pat := mark
end;

function apt (mark: char;
              this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if mark = this^.sign then here := this;
 apt := here
end;

function trap (var thou: text;
                   this: idea): idea;
begin
 trap := this;
 if this <> nil then read (thou, this^.sign)
end;

function part (var thou: text;
                   this: idea): idea;
begin
 part := this;
 if this <> nil then write (thou, this^.sign)
end;

function rapt (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then if that <> nil then
  if that^.sign = this^.sign then here := this;
 rapt := here
end;

function nip (var thou: text): numb;
var what: numb;
    mark: char;
begin
 read (thou, what);
 if not eoln (thou) then mark := tap (thou);
 nip := what
end;

function pin (var thou: text;
                  what: numb): numb;
begin
 write (thou, what, blank);
 pin := what
end;

function knab (var thou: text;
                   what: mode): numb;
begin
 if what = null then knab := 0 else knab := nip (thou)
end;

function spin (var thou: text;
                   this: idea): idea;
begin
 spin := this;
 if this <> nil then write (thou, this^.code)
end;

function score (var thou: text;
                    span: numb;
                    this: idea): idea;
begin
 score := this;
 if this <> nil then write (thou, this^.code : span)
end;

function pose (var thou: text;
                   this: idea): idea;
begin
 pose := this;
 if this <> nil then write (thou, this^.sign, this^.code, blank)
end;

function anon (what: numb): numb;
begin
 inc (what);  anon := what
end;

function anew (var what: numb): numb;
begin
 inc (what);  anew := what
end;

function alow (what: numb): numb;
begin
 alow := what - 1
end;

function abye (var what: numb): numb;
begin
 what := what - 1;  abye := what
end;

function arch (this: idea): char;
var mark: char;
begin
 mark := blank;
 if this <> nil then mark := this^.sign;
 arch := mark
end;

function ante (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := this^.as;
 ante := here
end;

function nigh (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := this^.up;
 nigh := here
end;

function trip (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := this^.on;
 trip := here
end;

function next (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := this^.by;
 next := here
end;

function reck (this: idea): numb;
var what: numb;
begin
 what := 0;
 if this <> nil then what := this^.code;
 reck := what
end;

function scrip (this: idea;
                mark: char): idea;
begin
 scrip := this;
 if this <> nil then this^.sign := mark
end;

function asset (this, that: idea): idea;
begin
 asset := this;
 if this <> nil then this^.as := that
end;

function upset (this, that: idea): idea;
begin
 upset := this;
 if this <> nil then this^.up := that
end;

function onset (this, that: idea): idea;
begin
 onset := this;
 if this <> nil then this^.on := that
end;

function beset (this, that: idea): idea;
begin
 beset := this;
 if this <> nil then this^.by := that
end;

function inset (this: idea;
                what: numb): idea;
begin
 inset := this;
 if this <> nil then this^.code := what
end;

function peg (     mark: char;
 when, thus, that, this: idea;
                   what: numb): idea;
var here: idea;
begin
 new (here);  with here^ do
  begin
   sign := mark;
     as := when;  up := thus;  on := that;  by := this;
   code := what
  end;
 peg := here
end;

function dot: idea;
begin
 dot := peg (nul, nil, nil, nil, nil, 0)
end;

function eye: idea;
begin
 eye := peg (blank, nil, nil, nil, nil, 0)
end;

function tag (mark: char): idea;
begin
 tag := peg (mark, nil, nil, nil, nil, 0)
end;

function tog (this: idea): idea;
begin
 tog := peg (blank, this, nil, nil, nil, 0)
end;

function tip: idea;
var here: idea;
begin
 here := tag (readkey);
 with here^ do if sign = nul then on := tip;
 tip := here
end;

function cog (this: idea): idea;
begin
 cog := beset (this, this)
end;

function nib: idea;
begin
 nib := cog (dot)
end;

function nob: idea;
begin
 nob := cog (eye)
end;

function bud (mark: char): idea;
begin
 bud := cog (tag (mark))
end;

function nub (this: idea): idea;
begin
 nub := cog (tog (this))
end;

function cue (this: idea): idea;
begin
 cue := upset (nib, this)
end;

function key (this: idea): idea;
begin
 key := upset (nob, this)
end;

function jog (this: idea): idea;
begin
 jog := inset (this, anon (reck (this)))
end;

function belong (such: cast;
                 this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if arch (this) in such then here := this;
 belong := here
end;

function beside (such: cast;
                 this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if not (arch (this) in such) then here := this;
 beside := here
end;

function class (this: idea): idea;
begin
 class := this;
 if this <> nil then
  case arch (this) of
   blank, enter: this := scrip (this, comma);
   escap, ender: this := scrip (this, point)
  end
end;

function clash (var thou: text;
                    this: idea): idea;
begin
 clash := this;
 if this <> nil then
  case arch (this) of
   comma: this := pass (thou, links, this);
   point: this := pass (thou, right, this)
  end
end;

function lief (this: idea): idea;
begin
 lief := apt (links, this)
end;

function rest (this: idea): idea;
begin
 rest := apt (right, this)
end;

function cope (this: idea): idea;
begin
 cope := apt (comma, this)
end;

function punt (this: idea): idea;
begin
 punt := apt (point, this)
end;

function bank (this: idea): idea;
begin
 bank := apt (blank, this)
end;

function balk (this: idea): idea;
begin
 balk := belong ([blank, links], this)
end;

function bark (this: idea): idea;
begin
 bark := belong ([blank, right], this)
end;

function blur (this: idea): idea;
begin
 blur := belong ([blank, links, right], this)
end;

function entab (this: idea): idea;
begin
 entab := apt (estab, this)
end;

function scape (this: idea): idea;
begin
 scape := apt (escap, this)
end;

function cleft (this: idea): idea;
begin
 cleft := belong ([comma, links], this)
end;

function grain (this: idea): idea;
begin
 grain := beside ([comma, links], this)
end;

function crest (this: idea): idea;
begin
 crest := belong ([comma, right], this)
end;

function glyph (this: idea): idea;
begin
 glyph := beside ([comma, right], this)
end;

function tare (this: idea): idea;
begin
 tare := belong ([comma, links, right], this)
end;

function gram (this: idea): idea;
begin
 gram := beside ([comma, links, right], this)
end;

function atom (this: idea): idea;
begin
 atom := beside ([blank, comma, links, right], this)
end;

function accept (this: idea): idea;
begin
 accept := belong ([blank, comma, enter], this)
end;

function accede (this: idea): idea;
begin
 accede := belong ([blank, enter], this)
end;

function critic (this: idea): idea;
begin
 critic := belong ([comma, point], this)
end;

function advice (this: idea): idea;
begin
 advice := critic (class (this))
end;

function kind (term: info): mode;
begin
 if term = 'log' then kind := null else kind := moot
end;

function render (this: idea): idea;
begin
 render := this;
 if this = nil then this := quash (this)
end;

function permit (line: info;
                 this: idea): idea;
var here: idea;
begin
 here :=
  vid (pass (con, links + elide,
  dim (pass (con, links + blank + line + blank, lash (nil)))));
 repeat here := tip until advice (here) <> nil;
 here := render (accept (clash (con, here)));
 permit := here
end;

function prompt (line: info): idea;
begin
 prompt := permit (line, nil)
end;

function recycle (this: idea): idea;
var here: idea;

function deposit (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then with this^ do
  begin
   here := by;
   if sign = links then on := recycle (on);
   dispose (this)
  end;
 deposit := here
end;

begin { recycle }
 here := nil;
 if this <> nil then with this^ do
  begin
   here := by;
   if here <> nil then
    begin
     by := nil;
     repeat here := deposit (here)
      until here = nil
    end
  end;
 recycle := here
end;

function repose (that, this: idea): idea;
begin
 repose := revert (recycle (that), this)
end;

function critique (term: info;
                   this: idea): idea;
begin
 if term = 'lex' then writeln ('<* no direction home; please reset *>')
 else
 if term = 'lit' then
  write ('<* unknown word beginning with "', arch (this), '" *>')
 else
 if term = 'par' then write ('<* wrong parens *>');
 critique := just (turn (hold (this)))
end;

function order (this: idea): idea;
var here, flag, menu, venu: idea;

function sort (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;  there := this;
   repeat
    with there^ do
     begin
      if sign = links then on := sort (on);
      if here^.code < by^.code then here := by;
      there := by
     end
   until there = this
  end;
 sort := here
end;

function resort (thus, that, this: idea): idea;
begin
 resort := this;
 if thus <> nil then with thus^ do on := sort (on);
 if that <> nil then with that^ do on := sort (on)
end;

function free (this: idea): idea;
begin
 free := divert (this, covert (nigh (this), this))
end;

function find (mark: char;
               this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat here := apt (mark, there);
    there := next (there)
   until (here <> nil) or (there = this)
  end;
 find := here
end;

function fore (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   repeat here := next (here)
    until next (here) = this
  end;
 fore := here
end;

function rise (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   repeat here := fore (here)
    until crest (here) <> nil
  end;
 rise := here
end;

function fall (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   repeat here := next (here)
    until crest (here) <> nil
  end;
 fall := here
end;

function prep (mark: char;
               this: idea): idea;
var here, there, where: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat
    where := next (there);
    here := divert (apt (mark, where), there);
    there := where
   until (here <> nil) or (there = this)
  end;
 prep := here
end;

function last (this: idea): idea;
begin
 last := prep (right, this)
end;

function suit (this: idea): idea;
begin
 suit := find (right, this)
end;

function coup (this: idea): idea;
begin
 coup := next (suit (this))
end;

function stem (this: idea): idea;
begin
 stem := trip (suit (this))
end;

function sequel (this: idea): idea;
begin
 sequel := suit (trip (this))
end;

function coupon (this: idea): idea;
begin
 coupon := coup (trip (this))
end;

function knap (this: idea): idea;
begin
 knap := equity (next (this), rest (this))
end;

function knot (this: idea): idea;
begin
 knot := equity (this, equity (fore (suit (this)), next (suit (this))))
end;

function respect (this: idea): idea;
begin
 respect := divert (ante (bank (this)), this)
end;

function suspect (this: idea): idea;
begin
 suspect := divert (knot (respect (coupon (lief (this)))), this)
end;

function aspect (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if respect (this) <> nil then here := this
   else if suspect (this) <> nil then here := this;
 aspect := here
end;

function apse (that, this: idea): idea;
begin
 apse := divert (equity (ante (that), ante (this)), this)
end;

function sape (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if atom (that) <> nil then here := rapt (that, this)
   else if bank (that) <> nil then here := apse (that, this);
 sape := here
end;

function pase (that, this: idea): idea;
begin
 pase :=
  divert (apse (
  coupon (suspect (that)),
  coupon (suspect (this))), this)
end;

function apes (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if sape (that, this) <> nil then here := this
   else if pase (that, this) <> nil then here := this;
 apes := here
end;

function like (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat here := apes (that, there);
    there := next (there)
   until (here <> nil) or (there = this)
  end;
 like := here
end;

function axil (this: idea): idea;
var here: idea;
begin
 here := nil;
 if respect (this) <> nil then
  begin
   here := covert (equity (fore (this), next (this)), this);
   if here = nil then here := suspect (stem (this))
  end;
 axil := here
end;

function grasp (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if grain (this) <> nil then here := this
   else if suspect (this) <> nil then here := this;
 grasp := here
end;

function fret (this: idea): idea;
var here: idea;
begin
 here := nil;
 if lief (this) <> nil then
  if suspect (this) = nil then here := this;
 fret := here
end;

function deal (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if glyph (this) <> nil then
   if fret (this) <> nil then here := trip (this)
    else here := next (this);
 deal := here
end;

function lode (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if gram (this) <> nil then here := this
   else if suspect (this) <> nil then here := this;
 lode := here
end;

function lade (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := fore (there);
    here := lode (there)
   until (here <> nil) or (there = this)
  end;
 lade := here
end;

function lead (this: idea): idea;
begin
 lead := lade (upon (grasp (this), stem (this), this))
end;

function joss (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if grasp (this) <> nil then here := jog (stem (this))
   else here := this;
 joss := here
end;

function jolt (this: idea): idea;
begin
 jolt := jog (lade (joss (this)))
end;

function graft (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this = nil then here := that
  else
   begin
    if that <> nil then
     begin
      here := that^.by;
      that^.by := this^.by;
      this^.by := here
     end;
    here := this
   end;
 graft := here
end;

function pinch (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := beset (fore (this), next (this));
   here := cog (this)
  end;
 pinch := here
end;

function switch: idea;
var here: idea;
begin
 here := bud (links);
 with here^ do
  begin
   on := peg (right, nil, nil, here, nil, 0);
   on^.by := on;
   here := on
  end;
 switch := here
end;

function stitch: idea;
begin
 stitch := trip (switch)
end;

function splice: idea;
begin
 splice := bud (comma)
end;

function work (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if lief (this) <> nil then here := this
   else if ante (this) <> nil then here := this;
 work := here
end;

function ease (this: idea): idea;
var here, there, where: idea;
begin
 here := nil;
 if rest (this) <> nil then
  begin
   there := this;
   repeat there := next (there);
    where := work (there)
   until (where <> nil) or (there = this);
   here := covert (where, this)
  end;
 ease := here
end;

function edge (this: idea): idea;
begin
 edge := divert (ease (sequel (lief (this))), this)
end;

function clue (that, this: idea): idea;
begin
 clue := graft (nub (that), this)
end;

function recall (var thou: text;
                     this: idea): idea;
forward;

function hark (var thou: text;
                   this: idea): idea;
var here: idea;
begin
 hark := nil;
 if this <> nil then
  begin
   here := next (this);
   repeat here := next (here);
    if ante (here) = nil then here := part (thou, here)
     else here := obvert (here, recall (thou, ante (here)))
   until here = this;
   this := recycle (this)
  end
end;

function back (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := lead (there);
    here := clue (there, here)
   until there = nil
  end;
 back := here
end;

{function recall { (var thou: text;}
                      {this: idea): idea };}

{Remove the comments in the line below}
function recall (var thou: text;
                      this: idea): idea ;
var here: idea;
begin
 recall := this;
 if this <> nil then
  if tare (this) <> nil then here := hark (thou, back (this))
   else if bank (this) = nil then here := part (thou, this)
    else here := recall (thou, ante (this))
end;

function call (this: idea): idea;
begin
 call := obvert (this, recall (con, ante (this)))
end;

function recant (var thou: text;
                     this: idea): idea;
begin
 recant :=
    pass (thou, blank + right,
  recall (thou, coupon (
    pass (thou, links, this))))
end;

function state (var thou: text;
                    this: idea): idea;
var here: idea;
begin
 state := this;
 if this <> nil then
  if respect (this) <> nil then here := recall (thou, this)
   else if suspect (this) <> nil then here := recant (thou, this)
end;

function claim (this: idea): idea;
begin
 claim := state (con, this)
end;

function recount (var thou: text;
                      this: idea): idea;
var here: idea;

function harp (var thou: text;
                   this: idea): idea;
begin
 harp := obvert (this, hark (thou, nigh (this)))
end;

function beck (this: idea): idea;
var here, there, where: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := nib;
   there := nil;  where := this;
   repeat where := lead (where);
    there := clue (where, there);
    here := jog (upset (here, there))
   until where = nil
  end;
 beck := here
end;

begin { recount }
 here := nil;
 if this <> nil then
  if tare (this) <> nil then here := harp (thou, beck (this))
   else if bank (this) = nil then here := part (thou, this)
    else here := recount (thou, ante (this));
 recount := here
end;

function counter (var thou: text;
                      this: idea): idea;
begin
 counter :=
     pass (thou, blank + right,
  recount (thou, coupon (
     pass (thou, links, this))))
end;

function issue (var thou: text;
                    span: numb;
                    this: idea): idea;
var here: idea;
begin
 issue := this;
 if this <> nil then
  if respect (this) <> nil then
   here := skip (thou, span - reck (recount (thou, this)), this)
  else if suspect (this) <> nil then
   here := skip (thou, span - reck (counter (thou, this)) - 3, this)
end;

function list (this: idea;
               mark: char): idea;
begin
 list := graft (this, bud (mark))
end;

function roll (this, that: idea): idea;
begin
 roll := graft (this, nub (that))
end;

function image (this: idea): idea;
begin
 image := stem (graft (switch, this))
end;

function token (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := bud (arch (this));
 token := here
end;

function tally (this: idea): idea;
begin
 tally := inset (token (this), reck (this))
end;

function gist (this: idea): idea;
begin
 gist := asset (token (this), ante (this))
end;

function gage (this: idea): idea;
begin
 gage := gist (gram (this))
end;

function gate (this: idea): idea;
begin
 gate := image (gage (coupon (this)))
end;

function gauge (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if gram (this) <> nil then here := gist (this)
   else if suspect (this) <> nil then here := gate (this);
 gauge := here
end;

function vest (this: idea): idea;
begin
 vest := divert (ante (bank (this)), this)
end;

function test (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if cope (this) <> nil then here := this
   else here := vest (this);
 test := here
end;

function pend (this: idea): idea;
begin
 pend := inset (gist (this), reck (this))
end;

function mend (this: idea): idea;
begin
 mend := pend (cope (this))
end;

function vend (this: idea): idea;
begin
 vend := pend (vest (this))
end;

function tend (this: idea): idea;
begin
 tend := pend (test (this))
end;

function buff (line: info): idea;
var here: idea;
    i, n: numb;
begin
 here := nil;  n := length (line);
 if n > 0 then
  begin
   here := nib;
   for i := 1 to n do here := list (here, line[i])
  end;
 buff := here
end;

function brush (row, col: numb;
                    this: idea): idea;
var here: idea;
begin
 brush := this;
 if this <> nil then
  begin
   here := next (this);
   repeat here := part (con, at (row, anew (col), next (here)))
    until here = this
  end
end;

function wend (that, this: idea): idea;
var here: idea;
begin
 wend := this;
 if this <> nil then
  begin
   if that = nil then here := onset (this, this)
    else here := onset (that, onset (this, trip (that)));
   here := asset (ante (this), this)
  end
end;

function past (this: idea): idea;
begin
 past := ante (ante (this))
end;

function plot (this: idea): idea;
begin
 plot := wend (past (this), this)
end;

function wink (var thou: text): char;
begin
 wink := tap (thou);
 wink := blank
end;

function heed (var thou: text): char;
var mark: char;
begin
 mark := tap (thou);
 case mark of
  enter: mark := wink (thou);
  ender: mark := blank
 end;
 heed := mark
end;

function bulk (mark: char): boolean;
begin
 bulk := mark in [blank, nul]
end;

function tack (mark: char;
               this: idea): idea;
var here: idea;
begin
 here := nil;
 if lief (this) <> nil then
  begin
   here := sequel (this);
   if not bulk (mark) then here := find (mark, here)
  end
 else if cope (this) <> nil then
  if bulk (mark) then here := this;
 tack := here
end;

function spot (var thou: text;
                   this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   repeat here := tack (heed (thou), next (here))
    until (crest (here) <> nil) or (here = nil);
   if here = nil then here := critique ('lit', this)
  end;
 spot := here
end;

function match (that, this: idea): idea;
var here, there: idea;
begin
 there := nil;
 if this <> nil then if that <> nil then
  begin
   here := next (next (this));
   there := tack (arch (here), that);
   while glyph (there) <> nil do
    begin
     here := next (here);
     there := tack (arch (here), next (there))
    end
  end;
 match := there
end;

function stock: idea;
begin
 stock := image (stitch)
end;

function clave (var thou: text;
                    this: idea): idea;
var here: idea;
    name: info;
begin
 here := nil;  readln (name);
 if name = empty then here := stock
  else
   begin
    assign (thou, name);  reset (thou)
   end;
 clave := here
end;

function clepe (var thou: text;
                    this: idea): idea;
var name: info;
begin
 clepe := this;  readln (name);
 if name = empty then name := 'con';
 assign (thou, name);  rewrite (thou)
end;

function compt (var thou: text;
                    this: idea): idea;
begin
 compt := this;  close (thou)
end;

function spell (var thou: text): idea;
var here: idea;
    mark: char;
begin
 here := nil;
 repeat mark := tap (thou);
  case mark of
   links: here := trip (graft (here, inset (stitch, nip (thou))));
   right: if rest (next (here)) <> nil then
           here := trip (inset (next (here), nip (thou)))
          else here := critique ('lex', here);
   enter: mark := tap (thou);
   ender:
   else   here := inset (list (here, mark), nip (thou))
  end
 until mark = ender;
 spell := here
end;

function fetch (this: idea): idea;
var here: idea;
    thou: text;
begin
 here := nil;
 if this = nil then
  begin
   if prompt ('read lex file') <> nil then
    begin
     here := clave (thou, this);
     if here = nil then
      here := compt (thou, spell (thou))
    end
  end;
 fetch := here
end;

function chart (var thou: text;
                    thus: mode;
                    this: idea): idea;
var here: idea;
    mark: char;
begin
 here := nil;
 repeat mark := tap (thou);
  case mark of
   links: here := trip (graft (here, inset (stitch, knab (thou, thus))));
   right: if rest (next (here)) <> nil then
           here := trip (inset (next (here), knab (thou, thus)))
          else here := critique ('par', here);
   comma: here := graft (here, inset (splice, knab (thou, thus)));
   enter: mark := tap (thou);
   blank, ender:
   else here := inset (plot (roll (here, spot (thou, tack (mark, this)))),
                       knab (thou, thus))
  end
 until mark = ender;
 chart := here
end;

function frame (term: info;
                this: idea): idea;
var here: idea;
    thou: text;
begin
 here := nil;
 if this <> nil then
  if prompt ('read '+ term +' file') <> nil then
   begin
    here := clave (thou, here);
    if here = nil then
     here := compt (thou, chart (thou, kind (term), this))
   end;
 frame := here
end;

function stage (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 there := fetch (nil);
 if there <> nil then
  begin
   there := graft (switch, sort (there));
   here := frame ('lit', there);
   if here <> nil then here := graft (there, sort (here))
  end;
 stage := here
end;

function clip (var thou: text;
                   this: idea): idea;
forward;

function post (var thou: text;
                   this: idea): idea;
var here: idea;
begin
 post := this;
 if bank (this) <> nil then here := recall (thou, ante (this));
 here := pose (thou, this);
 if lief (this) <> nil then here := clip (thou, sequel (this))
end;

{function clip { (var thou: text;}
                    {this: idea): idea };}
{Remove comments in the tow lines below}
function clip (var thou: text;
                    this: idea): idea ;
var here: idea;
begin
 clip := this;
 if this <> nil then
  begin
   here := this;
   repeat here := post (thou, next (here))
    until here = this
  end
end;

function save (this: idea): idea;
var thou: text;
begin
 save := turn (compt (thou, clip (thou, clepe (thou, this))))
end;

function show (this: idea): idea;
begin
 show := clip (con, this)
end;

function tell (this: idea): idea;
begin
 tell := next (show (fore (this)))
end;

function site (var thou: text;
                   this: idea): idea;
var here: idea;
begin
 site := this;
 if this <> nil then
  if atom (this) <> nil then here := part (thou, this)
   else if ante (this) <> nil then
    begin
     if crest (this) <> nil then here := pass (thou, quote, this);
     here := recall (thou, ante (this))
    end
end;

function toss (var thou: text;
             that, this: idea): idea;
begin
 toss := this;  write (thou, seg (that^) : 8, ofs (that^) : 2)
end;

function dump (this: idea): idea;
var here: idea;
begin
 dump := this;
 if this <> nil then
  begin
   here := this;
   repeat here := next (here);
    here :=
     turn (
     site (con, skip (con, 4, score (con, 8,
     toss (con, next (here),
     toss (con, trip (here),
     toss (con, ante (here),
     pass (con, arch (here),  skip (con, 4,
     toss (con, here, here))))))))));
    if lief (here) <> nil then
     here := obvert (here, dump (sequel (here)))
   until here = this
  end
end;

function index (this: idea): idea;
var here, lex, lit: idea;

function diag (span: numb;
               this: idea): idea;
begin
 diag := at (span, span, this)
end;

function bias (that, this: idea): idea;
begin
 bias := diag (reck (that), this)
end;

function cant (this: idea): idea;
begin
 cant := diag (reck (this), this)
end;

function dent (that, this: idea): idea;
begin
 dent := diag (anon (reck (that)), this)
end;

function bent (that, this: idea): idea;
var span: numb;
begin
 span := anon (reck (that));
 bent := at (span, span + reck (this), this)
end;

function kern (that, this: idea): idea;
var here: idea;
begin
 kern := this;
 if this <> nil then
  if atom (this) <> nil then here := bent (that, this)
   else here := dent (this, this)
end;

function wash (size: numb;
         that, this: idea): idea;
var row, span: numb;
begin
 wash := this;
 span := reck (that);
 if atom (this) <> nil then this := dash (this)
  else for row := size downto span do this := dash (diag (row, this))
end;

function gnash (this: idea): idea;
begin
 gnash := dash (dent (this, nil))
end;

function fresh (tab: numb;
         that, this: idea): idea;
var span: numb;
begin
 span := reck (that);
 fresh := at (span, span + tab, this)
end;

function scion (this: idea): idea;
begin
 scion := graft (gist (this), splice)
end;

function split (this: idea): idea;
var here: idea;
begin
 here := nil;
 if cope (this) <> nil then
  here :=
   onset (scrip (this, links),
   onset (scrip (pend (this), right), this));
 split := here
end;

function scale (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if cope (that) <> nil then
  begin
   there := graft (split (that), splice);
   here := graft (stitch, graft (trip (that), this))
  end;
 scale := here
end;

function pod (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   there := fret (nigh (that));
   if there <> nil then
    here := upset (this, next (like (this, trip (there))));
   here := inset (this, anon (reck (that)))
  end;
 pod := here
end;

function note (that, this: idea): idea;
begin
 note := graft (that, pod (that, this))
end;

function clef (this: idea): idea;
begin
 clef := gauge (deal (nigh (this)))
end;

function plant (this: idea): idea;
var here: idea;
begin
 plant := this;
 if cleft (this) <> nil then
  begin
   here := this;
   repeat here := jolt (here)
    until here = nil
  end
end;

function reward (this: idea): idea;
begin
 reward := obvert (this, plant (nigh (this)))
end;

function place (this: idea): idea;
var here: idea;
begin
 place := this;
 if cleft (this) <> nil then
  begin
   here := this;
   repeat here := deal (jog (here))
    until here = nil
  end
end;

function credit (this: idea): idea;
begin
 credit := obvert (this, place (nigh (this)))
end;

function plait (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if lief (that) <> nil then
  here := graft (fore (last (trip (that))), this)
 else if cope (that) <> nil then here := scale (that, this);
 plait := here
end;

function plight (that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if that <> nil then
  if this = nil then here := that
   else here := upset (this, plait (nigh (that), scion (this)));
 plight := here
end;

function pledge (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   repeat there := free (next (here));
    here := plight (here, there)
   until there = nil
  end;
 pledge := here
end;

function trunk (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if nigh (this) <> nil then here := this
   else if nigh (next (this)) <> nil then
    begin
     here := this;
     repeat here := next (here)
      until nigh (next (here)) = nil
    end;
 trunk := here
end;

function stash (this: idea): idea;
var here: idea;
begin
 stash := this;
 if this <> nil then
  begin
   here := trunk (this);
   if here <> this then here := pledge (here);
   here := credit (reward (here))
  end
end;

function stake (this: idea): idea;
var here: idea;
begin
 stake := this;
 if this <> nil then
  if rest (this) <> nil then here := pass (con, point, this)
   else here := claim (this)
end;

function spate (var thou: text;
                    this: idea): idea;
begin
 spate := spin (thou, space (thou, this))
end;

function ratio (var thou: text;
        thus, that, this: idea): idea;
var nom, num: numb;
begin
 ratio := this;
 nom := reck (thus);  num := reck (that);
 if nom > 0 then write (thou, num / nom :3:2)
end;

function log2 (what: real): real;
begin
 log2 := ln (what) / ln (2)
end;

function doubt (var thou: text;
        thus, that, this: idea): idea;
var nom, num: numb;
begin
 doubt := this;
 nom := reck (thus);  num := reck (that);
 if nom > 0 then if num > 0 then
  write (thou, (num / nom) * log2 (nom / num) :4:3)
end;

function spark (that, this: idea): idea;
begin
 spark := dash (spate (con, fresh (40, that, dash (this))))
end;

function glint (when, thus, that, this: idea): idea;
begin
 glint :=
  doubt (con, thus, that, fresh (60, when,
  ratio (con, thus, that, fresh (50, when, this))))
end;

function blaze (thus, that, this: idea): idea;
var here: idea;
begin
 blaze := this;
 if this <> nil then
  if atom (that) <> nil then here := part (con, gram (this))
   else if blur (this) <> nil then
    here :=
     glint (thus, nigh (that), this,
     spark (thus, stake (bias (thus, this))))
end;

function gloss (this: idea): idea;
var here, there: idea;
begin
 gloss := this;
 if this <> nil then
  if atom (this) <> nil then here := part (con, this)
   else if balk (this) <> nil then
    begin
     there := nigh (claim (cant (this)));
     here :=
      dent  (this,
      glint (this, stem (there), there,
      spark (this, there)))
    end
end;

function guess (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if that <> nil then
  begin
   here := tally (that);
   if this <> nil then
    begin
     there := this;
     repeat there := deal (there);
      if there <> nil then
       there := deal (blaze (jog (here), that, there))
     until there = nil
    end
  end;
 guess := here
end;

function trace (thus, that, this: idea): idea;
begin
 trace := kern (thus, wash (size, jog (guess (that, this)), that))
end;

function sketch (thus, that, this: idea): idea;
begin
 sketch := obvert (this, trace (thus, that, this))
end;

function glance (that, this: idea): idea;
begin
 glance := obvert (this, trace (that, this, nigh (this)))
end;

function flash (that, this: idea): idea;
begin
 flash := kern (that, vid (glance (that, dim (gloss (this)))))
end;

function reach (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := grasp (there)
   until (here <> nil) or (there = this)
  end;
 reach := here
end;

function pick (thus, that, this: idea): idea;
var here, there, where: idea;
begin
 here := nil;
 if lief (this) <> nil then
  begin
   here := this;
   there := trip (here);  where := nil;
   repeat
    here := sketch (thus, that, onset (here, reach (there)));
    there := trip (here);  where := tip
   until punt (where) = nil;
   if accept (where) <> nil then here := gauge (there) else here := nil
  end;
 pick := here
end;

function play (that, this: idea): idea;
begin
 play := vid (pick (that, this, dim (nigh (this))))
end;

function track (this: idea): idea;
var here: idea;
begin
 track := this;
 if this <> nil then
  begin
   here := this;
   repeat here := gloss (next (here))
    until here = this
  end
end;

function thrash (this: idea): idea;
begin
 thrash := kern (this, vid (glance (this, dim (track (this)))))
end;

function renumb (this: idea): idea;
var here: idea;
    span: numb;
begin
 renumb := this;
 if this <> nil then
  begin
   here := this;  span := 0;
   repeat here := next (inset (here, anew (span)))
    until here = this
  end
end;

function regard (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if bank (this) <> nil then
  begin
   there := axil (this);
   repeat here := graft (upset (gauge (there), next (there)), here);
    there := lead (there)
   until there = nil
  end;
 regard := here
end;

function review (this: idea): idea;
begin
 review := fore (renumb (next (regard (this))))
end;

function thresh (this: idea): idea;
var here, there, where, thus: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := ante (this);
   if there <> nil then
    repeat where := ante (there);
     here := thrash (review (where));  thus := tip;
     if entab (thus) <> nil then there := asset (there, trip (where))
    until entab (thus) = nil
  end;
 thresh := here
end;

function summary (this: idea): idea;
var thou: text;

function detail (var thou: text;
                      tab: numb;
        that, this: idea): idea;
begin
 detail :=
  return (thou,
   doubt (thou, that, this, skip (thou, 8,
   ratio (thou, that, this, skip (thou, 8,
   score (thou, 8,
   issue (thou, trim - tab, skip (thou, tab, this))))))))
end;

function report (var thou: text;
                      tab: numb;
                     this: idea): idea;
var here, there: idea;
begin
 report := this;
 if this <> nil then
  begin
   there := this;
   repeat
    if aspect (there) <> nil then
     here := detail (thou, tab, stem (this), there)
    else if lief (there) <> nil then
     here := report (thou, anon (tab), trip (there));
    there := next (there)
   until there = this
  end
end;

begin { summary }
 summary := compt (thou, report (thou, 0, clepe (thou, this)))
end;

function patch (this: idea): idea;
begin
 patch := call (at (24, 1, this))
end;

function catch (term, line: info;
                that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then if that <> nil then
  if match (that, buff (term)) = this then
   if prompt (line) <> nil then here := this;
 catch := here
end;

function pitch (menu, lit, this: idea): idea;
var here, thus, lex: idea;
begin
 here := nil;
 if this <> nil then if lit <> nil then
  begin
   thus := ante (this);  lex := fore (lit);
   if catch ('index', 'return to index', menu, thus) <> nil
    then here := flag
    else
     begin
      if catch ('sort', 'sort index', menu, thus) <> nil
       then here := wait (tort (resort (lex, lit, nil)))

      {else if catch ('check', 'check memory', menu, thus) <> nil}
       {then here := hold (space (con, tort (check (nil))))}

      else if catch ('summary', 'write summary file', menu, thus) <> nil
       then here := hold (graft (lex, summary (pinch (lit))))
      else if catch ('show', 'show index', menu, thus) <> nil
       then here := hold (turn (show (turn (stem (lit)))))
      else if catch ('dump', 'dump index', menu, thus) <> nil
       then here := hold (dump (turn (stem (lit))));
      here := nil
     end
  end;
 pitch := here
end;

function craft (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := flash (that, this);
   repeat there := tip;
    case arch (there) of
     escap, ender: here := nil;
     elide, erase,
     links, right: here := gnash (that);
     blank, enter: here := stash (glance (that, here));
     comma:        here := note (here, gloss (clef (here)));
     point:        here := note (here, gloss (play (that, here)))
     else          here := flash (that, note (here, token (there)))
    end
   until (accede (there) <> nil) or (here = nil)
  end;
 craft := here
end;

function effect (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat here := crest (there);
    there := deal (there)
   until (here <> nil) or (there = nil)
  end;
 effect := here
end;

function upshot (this: idea): idea;
begin
 upshot := effect (nigh (this))
end;

function nudge (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := nub (this);
 nudge := here
end;

function hint (thus, that, this: idea): idea;
begin
 hint := nudge (upshot (craft (thus, note (that, this))))
end;

function mote (thus, that, this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if lief (this) <> nil then
   begin
    here := dash (part (con, this));
    here := image (hint (thus, cue (that), token (tip)))
   end
  else here := hint (thus, cue (that), token (this));
 mote := here
end;

function draft (menu, lit, that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := flash (clear (nil), key (this));
   repeat there := tip;
    case arch (there) of
     enter: here := flash (nil, here);
     comma: here := gloss (note (here, clef (here)));
     point: here := gloss (note (here, play (nil, here)));
     estab: here := flash (nil, graft (key (this), thresh (here)));
     blank: here := pitch (menu, lit, patch (stash (glance (nil, here))));
     escap, ender, elide, erase, right: here := nil;
     else   here := flash (nil, note (here, mote (here, that, there)))
    end
   until (here = flag) or (here = nil)
  end;
  if scape (there) = nil then if here <> flag then here := this;
 draft := here
end;

begin { index }
 index := this;
 here := turn (nil);
 lit := stage (here);  lex := fore (lit);
 if lit <> nil then
  begin
   repeat
    repeat
     repeat here := draft (menu, lit, lex, lit)
      until here = nil;
     if permit ('sort index', clear (nil)) <> nil then
      here := turn (tort (resort (lex, lit, nil)))
    until prompt ('return to index') = nil;
    repeat here := draft (menu, lit, menu, venu)
     until (here = flag) or (here = nil);
   until here = clear (nil);
   repeat
    if prompt ('write lex file') <> nil then lex := save (pinch (lex));
    if prompt ('write lit file') <> nil then lit := save (pinch (lit))
   until prompt ('quit') <> nil
  end
end;

function study (this: idea): idea;
var here, i, now, lex, log: idea;

function scene (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then here := frame ('log', this);
 if here  = nil then here := frame ('num', this);
 scene := here
end;

function query (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  begin
   write   ('< enter lines of inquiry >');
   writeln ('< press control-z to end >' : 54);  reset (con);
   here := chart (con, kind ('log'), this);    rewrite (con)
  end;
 query := here
end;

function fake (this: idea): idea;
forward;

function twin (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  if lief (this) <> nil then here := image (fake (sequel (this)))
   else if rest (this) = nil then here := pend (this);
 twin := here
end;

{function fake { (this: idea): idea };}

{Remove comments in the line below}
function fake (this: idea): idea ;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := graft (here, twin (there))
   until there = this
  end;
 fake := here
end;

function mock (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    case arch (there) of
     links: begin
             here := trip (graft (here, inset (stitch, reck (there))));
             there := sequel (there)
            end;
     right: if rest (next (here)) <> nil then
             begin
              here := trip (inset (next (here), reck (there)));
              there := trip (there)
             end
            else here := critique ('par', here);
     comma: here := graft (here, pend (there))
     else   here := graft (here, plot (pend (there)))
    end
   until there = this
  end;
 mock := here
end;

function seal (this: idea): idea;
var here: idea;
begin
 seal := this;
 if this <> nil then
  begin
   here := this;
   repeat
    with here^ do
     begin
      if sign = right then as := nil
       else if sign = links then here := seal (on);
      here := by
     end
   until here = this
  end
end;

function dupe (thus, this: idea): idea;
var here: idea;
begin
 here := nil;
 if thus <> nil then if this <> nil then
  begin
   thus := seal (thus);
   here := mock (this)
  end;
 dupe := here
end;

function face (this: idea): idea;
var here: idea;
   depth: numb;

function mood (this: idea): mode;
var here: mode;
begin
 here := null;
 if this <> nil then
  if lief (this) <> nil then here := moot
   else if ante (bank (this)) <> nil then here := firm;
 mood := here
end;

function look (this: idea): idea;
var here: idea;
begin
 here := nil;
 if this <> nil then
  begin
   here := this;
   repeat here := next (here);
    until (ante (here) <> nil) or (here = this);
   if ante (here) = nil then here := find (links, this)
  end;
 look := here
end;

function view (this: idea;
              depth: numb): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   if depth = 1 then here := look (this)
    else
     begin
      there := this;
      repeat there := next (there);
       here := view (trip (lief (there)), alow (depth))
      until (mood (here) = firm) or (there = this);
      if mood (here) = null then
       repeat there := next (there);
        here := view (trip (lief (there)), alow (depth))
       until (mood (here) = moot) or (there = this)
     end
  end;
 view := here
end;

begin { face }
 here := nil;
 if this <> nil then
  begin
   depth := 0;
   repeat here := view (this, anew (depth))
    until mood (here) <> moot;
   if mood (here) = null then here := nil
  end;
 face := here
end;

function impost (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := edge (there)
   until (here <> nil) or (there = this)
  end;
 impost := here
end;

function invest (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := equity (that, ante (there))
   until (here <> nil) or (there = this)
  end;
 invest := here
end;

function purport (this: idea): idea;
var here: idea;

function import (this: idea): idea;
var here, there, where: idea;

function impact (thus, this: idea): idea;
var here, there, where: idea;
begin
 here := nil;
 if this <> nil then if thus <> nil then
  if rest (this) <> nil then
   begin
    there := fall (thus);  where := rise (thus);
    while there <> where do
     begin
      there := next (there);
      if lief (there) <> nil then
       here := graft (here, import (there))
      else if crest (there) = nil then
       here := graft (here, pend (there))
     end
   end;
 impact := here
end;

begin { import }
 here := nil;
 if this <> nil then
  if lief (this) <> nil then
   begin
    there := sequel (this);  where := impost (there);
    if where <> nil then here := purport (impact (where, there))
     else
      begin
       here := image (purport (there));
       there := sequel (here);  where := impost (there);
       if where <> nil then here := purport (impact (where, there))
      end
   end
  else if rest (this) = nil then here := pend (this);
 import := here
end;

function impute (this: idea): idea;
var here, there, where: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := graft (here, import (there));
    where := edge (here)
   until (where <> nil) or (there = this);
   if where <> nil then here := stitch
  end;
 impute := here
end;

function comport (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := graft (here, import (there))
   until there = this
  end;
 comport := here
end;

begin { purport }
 here := nil;
 if this <> nil then
  if find (comma, this) <> nil then here := comport (this)
   else if impost (this) <> nil then here := stitch
    else here := impute (this);
 purport := here
end;

function purpose (this: idea): idea;
begin
 purpose := repose (this, purport (this))
end;

function stone (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  if that = nil then here := fake (this)
   else
    begin
     there := this;
     repeat there := next (there);
      if lief (there) <> nil then
       here := graft (here, image (stone (that, trip (there))))
      else if ante (there) <> that then here := graft (here, tend (there))
     until there = this
    end;
 stone := here
end;

function stick (that, this: idea): idea;
var here, there: idea;

function stirp (thus, that, this: idea): idea;
var here: idea;
begin
 here := thus;
 if this <> nil then
  if lief (this) <> nil then
   here := graft (here, image (stick (that, trip (this))))
  else here := graft (here, tend (this));
 stirp := here
end;

function stipe (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := stirp (here, that, there)
   until there = this
  end;
 stipe := here
end;

function stile (that, this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if this <> nil then
  begin
   there := this;
   repeat there := next (there);
    if ante (there) = that then here := graft (here, stitch)
     else here := stirp (here, that, there)
   until there = this
  end;
 stile := here
end;

begin { stick }
 here := nil;
 if this <> nil then
  if that = nil then here := fake (this)
   else if find (comma, this) <> nil then here := stile (that, this)
    else
     begin
      there := invest (that, this);
      if there <> nil then here := stitch;
      if here = nil then here := stipe (that, this)
     end;
 stick := here
end;

function model (this: idea): idea;
var here, there: idea;

function figure (that, this: idea): idea;
begin
 figure :=
  graft (switch,
  graft (nub (that),
  model (stone (that, this))))
end;

function ground (that, this: idea): idea;
begin
 ground :=
  graft (splice,
  graft (image (nub (that)),
  model (stick (that, this))))
end;

function gestalt (that, this: idea): idea;
begin
 gestalt :=
  stem (graft (
  figure (that, this),
  ground (that, this)))
end;

begin { model }

 {here := memcheck (nil);}

 if this <> nil then
  begin
   here := purpose (this);  there := ante (face (here));
   if there <> nil then here := repose (here, gestalt (there, here))
  end;
 model := here
end;

function affirm (var thou: text;
		     this: idea): idea;
begin
 affirm := verse (thou, blank + aster, this)
end;

function refute (var thou: text;
                     this: idea): idea;
begin
 refute := verse (thou, blank + minus, this)
end;

function reject (var thou: text;
                     what: mode;
                     this: idea): idea;
var here: idea;
begin
 reject := this;
 if what = null then here := refute (thou, this)
end;

function outline (what: mode;
                  this: idea): idea;
var thou: text;

function circuit (var thou: text;
                       tab: numb;
                      what: mode;
                      this: idea): idea;
var here: idea;

function feature (var thou: text;
                       tab: numb;
                      what: mode;
                      this: idea): idea;
var here: idea;
begin
 feature := this;
 if this <> nil then
  if what <> firm then
   begin
    here := state (thou, skip (thou, tab, this));
    if crest (next (this)) <> nil then here := affirm (thou, this)
     else if edge (next (this)) = nil then here := return (thou, this)
   end
  else if respect (this) <> nil then
   here := return (thou, recall (thou, skip (thou, tab, this)))
end;

function compass (var thou: text;
                       tab: numb;
                      what: mode;
                      this: idea): idea;
var here: idea;
begin
 compass := this;
 if this <> nil then
  if rest (next (cope (this))) <> nil then
   here := affirm (thou, skip (thou, tab, this))
  else if aspect (this) <> nil then
   here := feature (thou, tab, what, this)
  else if lief (this) <> nil then
   if edge (this) <> nil then here := reject (thou, what, this)
    else here := circuit (thou, anon (tab), what, sequel (this))
end;

begin { circuit }
 circuit := this;
 if this <> nil then
  begin
   here := this;
   repeat here := compass (thou, tab, what, next (here))
    until here = this
  end
end;

begin { outline }
 outline := compt (thou, circuit (thou, 0, what, clepe (thou, this)))
end;

function excerpt (this: idea): idea;
var here: idea;

function caption (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if aspect (this) <> nil then
  begin
   there := next (this);
   if crest (there) <> nil then here := graft (twin (this), mend (there))
    else
     begin
      here := excerpt (there);  there := next (there);
      if edge (here) <> nil then here := graft (stitch, mend (there))
       else here := graft (twin (this), graft (here, mend (there)))
     end
  end;
 caption := here
end;

function extract (this: idea): idea;
var here, there: idea;
begin
 here := nil;
 if rest (this) <> nil then
  begin
   there := this;
   repeat there := next (there);
    here := graft (here, caption (there))
   until there = this
  end;
 extract := here
end;

begin { excerpt }
 here := nil;
 if lief (this) <> nil then
  here := image (extract (sequel (this)));
 excerpt := here
end;

function profile (this: idea): idea;
var thou: text;

function contour (var thou: text;
                      span: numb;
                      this: idea): idea;
var here: idea;
     tab: numb;
begin
 contour := this;
 if this <> nil then
  begin
   here := this;  tab := span;
   repeat here := next (here);
    if respect (here) <> nil then
     here := return (thou, recall (thou, skip (thou, anew (tab), here)))
    else if cope (here) <> nil then tab := span
    else if lief (here) <> nil then
     if edge (here) = nil then if suspect (here) = nil then
      here := obvert (here, contour (thou, tab, sequel (here)))
   until here = this
  end
end;

begin { profile }
 profile := compt (thou, contour (thou, 0, clepe (thou, this)))
end;

function pause (this: idea): idea;
begin
 pause := turn (hold (this))
end;

function reserve (this: idea): idea;
begin
 reserve := pause (save (this))
end;

function interp (what: mode;
                 this: idea): idea;
var here: idea;
begin
 interp := this;
 if this = nil then
  if what = null then here := space (con, this)
   else here := pass (con, 'nil ', this)
end;

function dissert (what: mode;
                  this: idea): idea;
var here: idea;
begin
 dissert := turn (this);
 if this = nil then here := interp (what, this)
  else if what = moot then here := tell (this)
   else here := show (this);
 here := turn (here)
end;

function explain (what: mode;
                  this: idea): idea;
var here: idea;
begin
 explain := turn (this);
 if this = nil then here := interp (what, this)
  else here := show (turn (hold (dump (this))));
 here := turn (here)
end;

function display (this: idea): idea;
var here: idea;
begin
 display := turn (this);
 if prompt ('input') <> nil then here := dissert (firm, this);
 if prompt ('face ') <> nil then here := dissert (moot, face (this));
 here := hold (here)
end;

function expound (that, this: idea): idea;
var i,
    now, who,
    lex, log,
    dup, fak, fac: idea;
begin
 expound := this;
 if this <> nil then
  begin
   i := turn (nil);  now := nil;  who := nil;  lex := that;  log := this;
   if prompt ('log ') <> nil then log := explain (firm, log);
   if prompt ('dupe') <> nil then dup := explain (firm, dupe (lex, log));
   if prompt ('fake') <> nil then fak := explain (firm, fake (log));
   if prompt ('face') <> nil then fac := dissert (moot, face (dup));
   i := ante (fac);
   if prompt ('sense') <> nil then now := dissert (firm, purport (log));
   if prompt ('stone') <> nil then who := dissert (firm, stone (i, now));
   if prompt ('stick') <> nil then who := dissert (firm, stick (i, now));
   i := pause (i)
  end;
 i := clear (i)
end;

begin { study }
 study := this;
 here := turn (nil);
 i := nil;  now := nil;
 lex := fetch (nil);  log := scene (lex);
 if lex <> nil then
  begin
   if permit ('write num file', clear (nil)) <> nil then
    i := reserve (log);
   if permit ('show ram files', clear (nil)) <> nil then
    i := expound (lex, log);
   while permit ('query', clear (nil)) <> nil do
    begin
     here := graft (fake (till (log)), query (turn (lex)));
     if permit ('show files', turn (nil)) <> nil then i := display (here);
     if permit ('model', clear (nil)) <> nil then
      begin
       now := turn (model (till (here)));
       if prompt ('write mod file') <> nil then i := outline (null, now);
       if prompt ('write nom file') <> nil then i := reserve (now);
       if permit ('tenor', clear (nil)) <> nil then
        begin
         i := turn (excerpt (till (now)));
         if prompt ('write ten file') <> nil then i := outline (moot, i);
         if prompt ('write net file') <> nil then i := reserve (i);
         if permit ('canon', clear (nil)) <> nil then
          begin
           i := turn (till (i));
           if prompt ('write can file') <> nil then i := outline (firm, i);
           if prompt ('write nac file') <> nil then i := reserve (i)
          end;

         {if permit ('recycle memory', lash (memcheck (clear (nil)))) <> nil}
         {then i := hold (at (2, 48, memcheck (recycle (till (i)))))}
        end;

       if permit ('sense', clear (nil)) <> nil then
        begin
         i := turn (purpose (till (now)));
         if prompt ('write sen file') <> nil then i := profile (i);
         if prompt ('write nes file') <> nil then i := reserve (i)
        end
      end
    end
  end
end;

function slate (this: idea): idea;
var here: idea;
begin
 slate := this;
 while permit ('index', clear (nil)) <> nil do here := index (nil)
end;

function chalk (this: idea): idea;
var here: idea;
begin
 chalk := this;
 while permit ('study', clear (nil)) <> nil do here := study (nil)
end;

begin { order }
 order := this;
 here := nil;  flag := nil;  menu := nil;  venu := nil;
 here := just (turn (brush (1, 54, buff ('< Load Menu Files First >'))));
 venu := stage (here);  menu := fore (venu);
 if venu <> nil then
  begin
   flag := clear (match (menu, buff ('index')));
   here := just (chalk (clean (slate (here))))
  end
end;

begin { flint }
 flint := this;
 while permit ('order', clear (nil)) <> nil do here := order (nil)
end;

begin { theme }
 {freemin := 4096;}     size := 25;        trim := 40;
 assigncrt (con);     reset (con);       rewrite (con);
 checkbreak := true;  checkeof := true;  video (firm);
 here := clean (flint (nil));            close (con)
end.

{o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o}

{Theme One is licensed under the MIT License.}

{Copyright (c) 1984-2018 Jon Awbrey}

{Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.}

{o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o~~~~~~~~~o}
