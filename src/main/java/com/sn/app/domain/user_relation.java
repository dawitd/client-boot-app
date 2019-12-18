package com.sn.app.domain;






public class user_relation {

    long id;
    int user_id_1;
    int user_id_2;
    int action_initiated;
    int status; //could be 1-pending,2-accepted,3-declined or 4-blocked/
}
