-- cleans skype sqlite out for communication with specific person
delete from CallMembers where identity like '%<NAME>%';
delete from Calls where host_identity like '%<NAME>%' or current_video_audience='%<NAME>%';
delete from ChatMembers where identity like '%<NAME>%' or adder like '%<NAME>%';
delete from Chats where name like '%<NAME>%' or adder like '%<NAME>%';
delete from Contacts where skypename like '%<NAME>%';
delete from Conversations where identity like '%<NAME>%'; 
delete from Messages where dialog_partner like '%<NAME>%' or chatname like '%<NAME>%' or author like '%<NAME>%';
delete from Participants where identity like '%<NAME>%';
delete from Transfers where partner_handle like '%<NAME>%';