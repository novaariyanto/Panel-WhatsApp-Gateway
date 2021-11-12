<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['dashboard'] = 'dashboard';
$route['setting'] = 'admin/setting';

$route['login'] = 'auth/login';
$route['register']='registers/signup';

$route['user'] = 'admin/user';
$route['user/add'] = 'admin/user/add';
$route['user/insert'] = 'admin/user/insert';
$route['user/delete/(:any)'] = 'admin/user/delete/$1';

$route['webhook'] = 'client/webhook';
$route['webhook/add'] = 'client/webhook/add';
$route['webhook/(:any)'] = 'client/webhook/edit/$1';
$route['webhook/delete/(:any)'] = 'client/webhook/delete/$1';

$route['autoreply'] = 'client/autoreply';
$route['autoreply/add'] = 'client/autoreply/add';
$route['autoreply/(:any)'] = 'client/autoreply/edit/$1';
$route['autoreply/delete/(:any)'] = 'client/autoreply/delete/$1';

$route['device'] = 'client/device';
$route['device/add'] = 'client/device/add';
$route['device/insert'] = 'client/device/insert';
$route['device/authqr/(:any)'] = 'client/device/authQr/$1';
$route['device/detail/(:any)'] = 'client/device/getQR/$1';
$route['device/logout/(:any)'] = 'client/device/logoutInstance/$1';

$route['messageOut'] = 'client/message';
$route['messageOut/add'] = 'client/message/add';

$route['messageIn'] = 'client/messageIn';

$route['api/device/detail/(:any)'] = 'api/devices/getQR/$1';
$route['api/updateMultidevice'] = 'api/devices/updateMultidevice';

$route['api'] = 'api/messages';
$route['api/sendMessageText'] = 'api/messages/sendMessageText';
$route['api/sendImageUrl'] = 'api/messages/sendImageUrl';
$route['api/sendDocumentUrl'] = 'api/messages/sendDocumentUrl';
$route['api/sendVideoUrl'] = 'api/messages/sendVideoUrl';
$route['api/sendLocation'] = 'api/messages/sendLocation';
$route['api/sendVCard'] = 'api/messages/sendVCard';
$route['api/sendListMessage'] = 'api/messages/sendListMessage';
$route['api/sendButtonMessage'] = 'api/messages/sendButtonMessage';
$route['api/sendButtonLinkMessage'] = 'api/messages/sendButtonLinkMessage';

// Group Messaging
$route['api/sendMessageTextGroup'] = 'api/group/sendMessageText';
$route['api/sendImageUrlGroup'] = 'api/group/sendImageUrl';
$route['api/sendDocumentUrlGroup'] = 'api/group/sendDocumentUrl';
$route['api/sendVideoUrlGroup'] = 'api/group/sendVideoUrl';
$route['api/sendLocationGroup'] = 'api/group/sendLocation';
$route['api/sendVCardGroup'] = 'api/group/sendVCard';
$route['api/sendListMessageGroup'] = 'api/group/sendListMessage';
$route['api/sendButtonMessageGroup'] = 'api/group/sendButtonMessage';
$route['api/sendButtonLinkMessageGroup'] = 'api/group/sendButtonLinkMessage';
// End group Messaging

// Group Event

$route['api/createGroup'] = 'api/group/createGroup';
$route['api/makeAdminGroup'] = 'api/group/makeAdminGroup';
$route['api/demoteAdminGroup'] = 'api/group/demoteAdminGroup';
$route['api/addParticipants'] = 'api/group/addParticipants';
$route['api/removeParticipants'] = 'api/group/removeParticipants';
$route['api/updateSubjectGroup'] = 'api/group/updateSubjectGroup';
$route['api/updateDescriptionGroup'] = 'api/group/updateDescriptionGroup';
$route['api/leaveGroup'] = 'api/group/leaveGroup';
$route['api/inviteCode'] = 'api/group/inviteCode';
$route['api/listParticipants'] = 'api/group/listParticipants';
$route['api/groupInfo'] = 'api/group/groupInfo';
$route['api/listGroup'] = 'api/group/listGroup';

// End Group Event

// io service
$route['io'] = 'io/service';
// end io service

// instance
$route['api/device/(:any)'] = 'api/devices/getQR/$1';
// end instance

// tools 
$route['api/checkNumber'] = 'api/tools/checkNumber';
// end tools

$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
