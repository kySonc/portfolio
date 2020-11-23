<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>portfolio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <style>
        #circleBar{
        	margin-top:180px;           
            text-align:center;
            font-family:tahoma;
        }
        #circleBar .round{
            min-height:255px;
            margin-top:30px;
            position:relative;
            margin-bottom:20px;
        }
        #circleBar .round strong{
            position:absolute;
            top:40%;
            left:50%;
            transform:translate(-50%,-50%);
            font-size:40px;
            color:#212121;
            font-weight:100;
        }
        #circleBar span{
            display:block;
            color:#999;
            font-size:17px;
            margin-top:10px;
        }
        #circleBar span i{
            color:#ff5c5c;
            font-size:22px;
            margin-right:7px;
        }
        section button:hover{
            background-color:#ff5c5c;
        }
    </style>
</head>
<body>
	 
    <section id="circleBar">
        <h1>My skill Circle Progress Bar</h1>
        <p>
            Animated circluar bar design with html css and js
        </p>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="round" data-value="0.67" data-size="200" data-thickness="12">
                        <strong></strong>
                        <span><i class="fa fa-html5"></i>
                            HTML SKILLS
                        </span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="round" data-value="0.63" data-size="200" data-thickness="12">
                        <strong></strong>
                        <span><i class="fa fa-css3"></i>
                            css3 SKILLS
                        </span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="round" data-value="0.51" data-size="200" data-thickness="12">
                        <strong></strong>
                        <span><i class="fa fa-coffee"></i>
                            Java SKILLS
                        </span>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="round" data-value="0.35" data-size="200" data-thickness="12">
                        <strong></strong>
                        <span><i class="fa fa-file"></i>
                            JavaScript SKILLS
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <button class="btn" onClick="Circlle('.round');">Refresh</button>
        <button class="btn" onClick="location.href='index.do'">i'll be back</button>
    </section>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.2.0/circle-progress.min.js"></script>
    
    <script>
        function Circlle(el){
            $(el).circleProgress({fill: {color: '#ff5c5c'}}).on('circle-animation-progress', function(event,progress,stepValue){
                $(this).find('strong').text(String(stepValue.toFixed(2)).substr(2)+'%');
            });
        };

        Circlle('.round');
    </script>
</body>
</html>