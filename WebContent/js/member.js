/**
 * member.js 
 */
 
 function join_check(){
    if($.trim($('#mem_id').val()) == ''){
      alert('아이디를 입력하세요!');
      $('#mem_id').val('').focus();
      return false;
    }
    
    $mem_pwd = $.trim($('#mem_pwd').val());
    $pwd_chk = $.trim($('#pwd_chk').val());
    if($mem_pwd.length == 0){
      alert('비번을 입력하세요!');
      $('#mem_pwd').val('').focus();
      return false;
    }
    
    if($pwd_chk == ''){
      alert('비번확인을 입력하세요!');
      $('#pwd_chk').val('').focus();
      return false;
    }
    
    if($mem_pwd != $pwd_chk){
      alert('비번이 다릅니다!');
      $('#mem_pwd').val(''); //비번 입력 필드 초기화
      $('#pwd_chk').val(''); // 비번 확인 입력필드 초기화
      $('#mem_pwd').focus();
      return false;
    }
    
    if($.trim($('#mem_name').val()) == ''){
      alert('회원이름을 입력하세요!');
      $('#mem_name').val('').focus();
      return false;
    }
    
    if($.trim($('#mem_phone').val()) == ''){
      alert('폰번호를 입력하세요!');
      $('#mem_phone').val('').focus();
      return false;
    }
    
    if($.trim($('#mem_email').val()) == ''){
      alert('이메일을 입력하세요!');
      $('#mem_emil').val('').focus();
      return false;
    }
 }