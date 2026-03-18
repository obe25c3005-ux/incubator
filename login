<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تسجيل الدخول - الحاضنة الذكية</title>
    <style>
        /* تصميم مظلم طبي واحترافي متناسق مع باقي النظام */
        body {
            background-color: #0f172a; /* كحلي غامق */
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: radial-gradient(circle at center, #1e293b 0%, #0f172a 100%);
        }
        
        .login-box {
            background-color: #1e293b;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 350px;
            text-align: center;
            border-top: 4px solid #00f2fe; /* خط أزرق طبي */
        }
        
        .login-box h2 {
            margin-top: 0;
            margin-bottom: 5px;
            color: #00f2fe;
            letter-spacing: 1px;
            font-size: 24px;
        }
        
        .login-box p.subtitle {
            color: #94a3b8;
            font-size: 14px;
            margin-bottom: 30px;
        }
        
        input {
            width: 90%;
            padding: 14px;
            margin: 10px 0;
            border: 1px solid #334155;
            border-radius: 8px;
            background-color: #0f172a;
            color: white;
            outline: none;
            font-size: 16px;
            transition: 0.3s;
        }
        
        input:focus {
            border-color: #00f2fe;
            box-shadow: 0 0 8px rgba(0, 242, 254, 0.3);
        }
        
        input::placeholder {
            color: #64748b;
        }
        
        button {
            width: 100%;
            padding: 14px;
            background-color: #00f2fe;
            color: #0f172a;
            font-weight: bold;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
            transition: 0.3s;
        }
        
        button:hover {
            background-color: #00c2cb;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 242, 254, 0.4);
        }
        
        .back-btn {
            background-color: transparent;
            color: #94a3b8;
            margin-top: 15px;
            font-size: 14px;
            box-shadow: none;
        }
        
        .back-btn:hover {
            background-color: transparent;
            color: white;
            transform: none;
            box-shadow: none;
            text-decoration: underline;
        }
        
        .error {
            color: #ef4444; /* لون أحمر للتنبيه */
            margin-top: 15px;
            display: none;
            font-size: 14px;
            font-weight: bold;
            background-color: rgba(239, 68, 68, 0.1);
            padding: 10px;
            border-radius: 6px;
            border: 1px solid rgba(239, 68, 68, 0.3);
        }
    </style>
</head>
<body>

    <div class="login-box">
        <h2>🏥 Smart Incubator</h2>
        <p class="subtitle">بوابة دخول الأطباء والمديرين</p>
        
        <input type="text" id="username" placeholder="اسم المستخدم" autocomplete="off">
        <input type="password" id="password" placeholder="كلمة المرور">
        
        <button onclick="login()">تسجيل الدخول 🔓</button>
        
        <button class="back-btn" onclick="window.location.href='index.html'">العودة لشاشة المراقبة</button>
        
        <p id="error-msg" class="error">❌ بيانات الدخول غير صحيحة!</p>
    </div>

    <script>
        // دالة التحقق من تسجيل الدخول
        function login() {
            let user = document.getElementById("username").value;
            let pass = document.getElementById("password").value;
            let errorMsg = document.getElementById("error-msg");

            // بيانات الدخول الافتراضية للمشروع
            // اسم المستخدم: admin
            // كلمة المرور: 1234
            if (user === "admin" && pass === "1234") {
                // إخفاء رسالة الخطأ إذا كانت ظاهرة
                errorMsg.style.display = "none";
                
                // حفظ "مفتاح الدخول" في ذاكرة المتصفح المؤقتة
                sessionStorage.setItem("AuthStatus", "Logged_In");
                
                // تحويل الطبيب بنجاح إلى لوحة التحكم
                window.location.href = "dashboard.html";
            } else {
                // إظهار رسالة الخطأ وإفراغ حقل كلمة المرور
                errorMsg.style.display = "block";
                document.getElementById("password").value = "";
            }
        }

        // تفعيل زر الدخول عند الضغط على زر Enter في الكيبورد
        document.getElementById("password").addEventListener("keypress", function(event) {
            if (event.key === "Enter") {
                event.preventDefault();
                login();
            }
        });
    </script>
</body>
</html>
