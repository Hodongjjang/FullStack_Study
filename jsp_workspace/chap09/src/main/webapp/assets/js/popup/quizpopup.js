document.addEventListener("DOMContentLoaded", function() {

            var checkBox = document.getElementById('chk');

            var checkBoxState = localStorage.getItem('checkBoxState');

  
            if (checkBoxState === 'checked') {
                setTimeout(function() {
                }, 30000);
            }


            window.onbeforeunload = function() {
         
                if (checkBox.checked) {
                    localStorage.setItem('checkBoxState', 'checked');
                } else {
                    localStorage.setItem('checkBoxState', 'unchecked');
                }
            };
        });