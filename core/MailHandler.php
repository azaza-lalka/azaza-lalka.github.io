<?php
require_once "SendMailSmtpClass.php";

class MailHandler
{
    function __construct()
    {
        date_default_timezone_set('Asia/Dubai');
    }

    public function send($product, $size, $color, $name, $phone, $address, $recipient_mail)
    {
        $header = "Date: " . date("D, j M Y G:i:s") . " +0700\r\n";
        $header .= 'From: =?utf-8?b?' . base64_encode("tempformemsg") . "?= <tempformemsg@mail.ru>\r\n";
        $header .= "X-Mailer: The Bat! (v3.99.3) Professional\r\n";
        $header .= 'Reply-To: =?utf-8?b?' . base64_encode("tempformemsg") . "?= <tempformemsg@mail.ru>\r\n";
        $header .= "X-Priority: 3 (Normal)\r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Message-ID: <172562218." . date("YmjHis") . "@mail.ru>\r\n";
        $header .= 'To: =?utf-8?b?' . base64_encode("tempformemsg") . "?= <tempformemsg@mail.ru>\r\n";
        $header .= "Subject: =?utf-8?b?" . base64_encode("Parajumpers") . "?=\r\n";
        $header .= "Content-Type: text/html; charset=utf-8\r\n";
        $header .= "Content-Transfer-Encoding: 8bit\r\n";

        $mailSMTP = new SendMailSmtpClass('tempformemsg@mail.ru', 'password0101', 'ssl://smtp.mail.ru', 'tempformemsg', 465);

        $text = $product . '<br> Размер: ' . $size . '<br> Цвет: ' . $color . '<br> Имя: ' . $name . '<br> Телефон: ' . $phone . '<br> Адрес: ' . $address;

        $result = $mailSMTP->send($recipient_mail, 'parajumpers', $text, $header); // отправляем письмо
        if ($result === true) {
            echo "Письмо успешно отправлено";
        } else {
            echo "Письмо не отправлено. Ошибка: " . $result;
        }
    }

    public function get_data($smtp_conn)
    {
        $data = "";
        while ($str = fgets($smtp_conn, 515)) {
            $data .= $str;
            if (substr($str, 3, 1) == " ") {
                break;
            }
        }
        return $data;
    }
}

?>