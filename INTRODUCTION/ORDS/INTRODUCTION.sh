#/* ================================================  
# *    
# * Copyright (c) 2015 Oracle and/or its affiliates.  All rights reserved.
# *
# * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# *
# * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# *
# * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# *
# * ================================================
 */

demohome="$(dirname "$(pwd)")"
logfilename=$demohome/install/INTRODUCTION.ORDS.log
echo "Log File : $logfilename"
rm $logfilename
USER=$1
echo "Installation Parameters for Oracle JSON Hands on Lab : Oracle Database 12c (12.1.0.2.0)". > $logfilename
echo "\$USER        : $USER" >> $logfilename
echo "\$STATIC      : $STATIC" >> $logfilename
mkdir -p $demohome/$USER
rm -rf "$STATIC/publishedContent/Hands-on-Labs/SQL-JSON-2013"
rc=$?
echo "DELETE "$STATIC/publishedContent/Hands-on-Labs/SQL-JSON-2013" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 6
fi
rm -rf "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013"
rc=$?
echo "DELETE "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 6
fi
mkdir -p "$STATIC/publishedContent/Hands-on-Labs/SQL-JSON-2013"
rc=$?
echo "MKDIR "$STATIC/publishedContent/Hands-on-Labs/SQL-JSON-2013" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 7
fi
mkdir -p "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013"
rc=$?
echo "MKDIR "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 7
fi
mkdir -p "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql"
rc=$?
echo "MKDIR "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 7
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/reset.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/reset.sql"
fi
cp  "$demohome/setup/reset.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/reset.sql"
rc=$?
echo "COPY:"$demohome/setup/reset.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/reset.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.0 CREATE_TABLE.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.0 CREATE_TABLE.sql"
fi
cp  "$demohome/sql/1.0 CREATE_TABLE.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.0 CREATE_TABLE.sql"
rc=$?
echo "COPY:"$demohome/sql/1.0 CREATE_TABLE.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.0 CREATE_TABLE.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.1 SIMPLE_QUERIES.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.1 SIMPLE_QUERIES.sql"
fi
cp  "$demohome/sql/1.1 SIMPLE_QUERIES.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.1 SIMPLE_QUERIES.sql"
rc=$?
echo "COPY:"$demohome/sql/1.1 SIMPLE_QUERIES.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/1.1 SIMPLE_QUERIES.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/2.0 JSON_VALUE.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/2.0 JSON_VALUE.sql"
fi
cp  "$demohome/sql/2.0 JSON_VALUE.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/2.0 JSON_VALUE.sql"
rc=$?
echo "COPY:"$demohome/sql/2.0 JSON_VALUE.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/2.0 JSON_VALUE.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/3.0 JSON_QUERY.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/3.0 JSON_QUERY.sql"
fi
cp  "$demohome/sql/3.0 JSON_QUERY.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/3.0 JSON_QUERY.sql"
rc=$?
echo "COPY:"$demohome/sql/3.0 JSON_QUERY.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/3.0 JSON_QUERY.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/4.0 JSON_TABLE.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/4.0 JSON_TABLE.sql"
fi
cp  "$demohome/sql/4.0 JSON_TABLE.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/4.0 JSON_TABLE.sql"
rc=$?
echo "COPY:"$demohome/sql/4.0 JSON_TABLE.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/4.0 JSON_TABLE.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/5.0 RELATIONAL_VIEWS.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/5.0 RELATIONAL_VIEWS.sql"
fi
cp  "$demohome/sql/5.0 RELATIONAL_VIEWS.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/5.0 RELATIONAL_VIEWS.sql"
rc=$?
echo "COPY:"$demohome/sql/5.0 RELATIONAL_VIEWS.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/5.0 RELATIONAL_VIEWS.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/6.0 JSON_EXISTS.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/6.0 JSON_EXISTS.sql"
fi
cp  "$demohome/sql/6.0 JSON_EXISTS.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/6.0 JSON_EXISTS.sql"
rc=$?
echo "COPY:"$demohome/sql/6.0 JSON_EXISTS.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/6.0 JSON_EXISTS.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/7.0 JSON_INDEXES.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/7.0 JSON_INDEXES.sql"
fi
cp  "$demohome/sql/7.0 JSON_INDEXES.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/7.0 JSON_INDEXES.sql"
rc=$?
echo "COPY:"$demohome/sql/7.0 JSON_INDEXES.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/7.0 JSON_INDEXES.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
if [ -e "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/8.0 JSON_DOCUMENT_INDEX.sql" ] 
then
  rm "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/8.0 JSON_DOCUMENT_INDEX.sql"
fi
cp  "$demohome/sql/8.0 JSON_DOCUMENT_INDEX.sql" "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/8.0 JSON_DOCUMENT_INDEX.sql"
rc=$?
echo "COPY:"$demohome/sql/8.0 JSON_DOCUMENT_INDEX.sql" --> "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/sql/8.0 JSON_DOCUMENT_INDEX.sql" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 5
fi
mkdir -p "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/manual"
rc=$?
echo "MKDIR "$STATIC/home/$USER/Hands-on-Labs/SQL-JSON-2013/manual" : $rc" >> $logfilename
if [ $rc != "0" ] 
then
  echo "Operation Failed [$rc]: Installation Aborted." >> $logfilename
  echo "Installation Failed: See $logfilename for details."
  exit 7
fi
echo "Installation Complete" >> $logfilename
echo "Installation Complete: See $logfilename for details."
