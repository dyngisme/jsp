<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JsPsych Experiment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jspsych@7.0.0/css/jspsych.css">
    <script src="https://cdn.jsdelivr.net/npm/jspsych@7.0.0/jspsych.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jspsych@7.0.0/plugins/jspsych-html-keyboard-response.js"></script>
    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .experiment-content {
            width: 80%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="experiment-content" id="jspsych-experiment"></div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var jsPsych = initJsPsych({
                display_element: 'jspsych-experiment',
            });

            var welcome = {
                type: 'html-keyboard-response',
                stimulus: '<p>欢迎参加实验。</p><p>按任意键继续。</p>'
            };

            var instructions = {
                type: 'html-keyboard-response',
                stimulus: '<p>在实验中，你将会看到一些刺激。</p><p>按任意键继续。</p>'
            };

            var trial = {
                type: 'html-keyboard-response',
                stimulus: '<p>这是一个试验。</p><p>按任意键继续。</p>'
            };

            var goodbye = {
                type: 'html-keyboard-response',
                stimulus: '<p>实验结束。</p><p>谢谢你的参与！</p>'
            };

            var timeline = [welcome, instructions, trial, goodbye];

            jsPsych.run(timeline);
        });
    </script>
</body>
</html>
