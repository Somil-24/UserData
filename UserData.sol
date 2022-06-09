{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red70\green137\blue204;\red26\green26\blue41;\red172\green172\blue193;
\red212\green212\blue212;\red167\green197\blue152;\red45\green175\blue118;\red140\green108\blue11;\red13\green102\blue149;
\red253\green181\blue13;\red31\green133\blue64;\red194\green126\blue101;}
{\*\expandedcolortbl;;\cssrgb\c33725\c61176\c83922;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c19608\c72941\c53725;\cssrgb\c61961\c49412\c3137;\cssrgb\c0\c47843\c65098;
\cssrgb\c100000\c75686\c2745;\cssrgb\c12941\c58039\c31765;\cssrgb\c80784\c56863\c47059;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 pragma\cf4 \strokec4  \cf2 \strokec2 solidity\cf4 \strokec4  \cf5 \strokec5 ^\cf6 \strokec6 0.8.5\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 contract\cf4 \strokec4  UserData\cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf2 \strokec2 bool\cf4 \strokec4  access\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 struct\cf4 \strokec4  usersData\cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  name\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  userId\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 mapping\cf5 \strokec5 (\cf2 \strokec2 address\cf4 \strokec4  => usersData\cf5 \strokec5 )\cf7 \strokec7 public\cf4 \strokec4  users\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 mapping\cf5 \strokec5 (\cf2 \strokec2 address\cf4 \strokec4  => \cf2 \strokec2 bool\cf5 \strokec5 )\cf7 \strokec7 public\cf4 \strokec4  accessUsers\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  addUser\cf5 \strokec5 (\cf2 \strokec2 address\cf4 \strokec4  _add\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf8 \strokec8 memory\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 uint\cf4 \strokec4  _userId\cf5 \strokec5 )\cf7 \strokec7 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         users\cf5 \strokec5 [\cf4 \strokec4 _add\cf5 \strokec5 ].\cf4 \strokec4 name \cf5 \strokec5 =\cf4 \strokec4  _name\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         users\cf5 \strokec5 [\cf4 \strokec4 _add\cf5 \strokec5 ].\cf4 \strokec4 userId \cf5 \strokec5 =\cf4 \strokec4  _userId\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 modifier\cf4 \strokec4  accessUser\cf5 \strokec5 (\cf2 \strokec2 address\cf4 \strokec4  _accessAdd\cf5 \strokec5 )\{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  time \cf5 \strokec5 =\cf4 \strokec4  \cf9 \strokec9 block\cf5 \strokec5 .\cf4 \strokec4 timestamp\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  time2 \cf5 \strokec5 =\cf4 \strokec4  \cf9 \strokec9 block\cf5 \strokec5 .\cf4 \strokec4 timestamp \cf5 \strokec5 +\cf4 \strokec4  \cf6 \strokec6 86400\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cb1 \
\cb3         \cf10 \strokec10 if\cf5 \strokec5 (\cf4 \strokec4 time2 \cf5 \strokec5 -\cf4 \strokec4  time \cf5 \strokec5 <=\cf4 \strokec4  \cf6 \strokec6 86400\cf5 \strokec5 )\{\cf4 \cb1 \strokec4 \
\cb3         accessUsers\cf5 \strokec5 [\cf4 \strokec4 _accessAdd\cf5 \strokec5 ]\cf4 \strokec4  \cf5 \strokec5 =\cf4 \strokec4  \cf2 \strokec2 true\cf4 \strokec4  \cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf10 \strokec10 else\cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         accessUsers\cf5 \strokec5 [\cf4 \strokec4 _accessAdd\cf5 \strokec5 ]\cf4 \strokec4  \cf5 \strokec5 =\cf4 \strokec4  \cf2 \strokec2 false\cf5 \strokec5 ;\cf4 \strokec4     \cb1 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         _\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 function\cf4 \strokec4  retrieveUser\cf5 \strokec5 (\cf2 \strokec2 address\cf4 \strokec4  _add\cf5 \strokec5 )\cf7 \strokec7 public\cf4 \strokec4  accessUser\cf5 \strokec5 (\cf4 \strokec4 _add\cf5 \strokec5 )\cf4 \strokec4  \cf11 \strokec11 returns\cf5 \strokec5 (\cf2 \strokec2 string\cf4 \strokec4  \cf8 \strokec8 memory\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 uint\cf5 \strokec5 )\{\cf4 \cb1 \strokec4 \
\cb3         \cf9 \strokec9 require\cf5 \strokec5 (\cf4 \strokec4 accessUsers\cf5 \strokec5 [\cf4 \strokec4 _add\cf5 \strokec5 ]\cf4 \strokec4  \cf5 \strokec5 ==\cf4 \strokec4  \cf2 \strokec2 true\cf5 \strokec5 ,\cf12 \strokec12 "You're not allowed to access"\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 return\cf5 \strokec5 (\cf4 \strokec4 users\cf5 \strokec5 [\cf4 \strokec4 _add\cf5 \strokec5 ].\cf4 \strokec4 name\cf5 \strokec5 ,\cf4 \strokec4  users\cf5 \strokec5 [\cf4 \strokec4 _add\cf5 \strokec5 ].\cf4 \strokec4 userId\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 \}\cf4 \cb1 \strokec4 \
}