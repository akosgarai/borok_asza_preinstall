<?php
// Heading
$_['heading_title']      = 'PayPal';

// Text
$_['text_payment']       = 'Fizetés';
$_['text_success']       = 'Siker: A PayPal fiók részleteinek módosítása megtörtént!';
$_['text_pp_standard']   = '<a onclick="window.open(\'https://www.paypal.com/uk/mrb/pal=W9TBB5DTD6QJW\');"><img src="view/image/payment/paypal.png" alt="PayPal" title="PayPal" style="border: 1px solid #EEEEEE;" /></a>';
$_['text_authorization'] = 'Hitelesítés';
$_['text_sale']          = 'Eladás';

// Entry
$_['entry_email']        = 'E-mail cím:';
$_['entry_test']         = 'Teszt mód:';
$_['entry_transaction']  = 'Tranzakciós módszer:';
$_['entry_debug']		 = 'Debug mód:<br/><span class="help">Több információt tárol a rendszer logon túl.</span>';
$_['entry_total']        = 'Min. összeg:<br /><span class="help">A pénztárban a rendelés értékének el kell érnie ezt az összeget, hogy aktívvá váljon!</span>';
$_['entry_geo_zone']     = 'Földrajzi zóna:';
$_['entry_status']       = 'Állapot:';
$_['entry_sort_order']   = 'Sorrend:';
$_['entry_pdt_token']						= 'PDT Token:<br/><span class="help">A fizetési adatok átvitelének még nagyobb biztonsága és megbízhatóság érdekében. Hogyan tehető elérhetővé a PDT (Payment Data Transfer Token)? <a href="https://cms.paypal.com/us/cgi-bin/?&cmd=_render-content&content_ID=developer/howto_html_paymentdatatransfer" alt="">Katt ide!</a></span>';
$_['entry_itemized']						= 'Termékek mutatása egyenként:<br/><span class="help">Termékek egyenkénti felsorolása a Paypal számlán az eladó neve helyett.</span>';
$_['entry_order_status']					= 'Rendelés állapot: Teljesítve:<br /><span class="help">Állapot, ami fizetés teljesítése után megjelenítésre kerül.</span>';
$_['entry_order_status_pending']			= 'Rendelési állapot: Függőben:<br /><span class="help">A fizetés függőben; lásd az "Okok" változót. Újabb értesítést fog kapni, amint a fizetés állapota újra megváltozik.</span>';
$_['entry_order_status_denied']				= 'Rendelési állapot: Megtagadva:<br /><span class="help">Ön, a kereskedő megtagadta a fizetést. Ez csak akkor teljesülhet, ha korábban a rendelés függőben volt valamilyen ok miatt.</span>';
$_['entry_order_status_failed']				= 'Rendelés állapot: Sikertelen:<br /><span class="help">A fizetés sikertelen. Akkor jelenik meg, ha a fizetést a vásárló banszámlájáról megkísérelték.</span>';
$_['entry_order_status_refunded']			= 'Rendelési állapot: Visszatérítve:<br /><span class="help">Ön, a kereskedő visszafizeti a vásárló befizetését.</span>';
$_['entry_order_status_canceled_reversal']	= 'Rendelés állapot: Visszavonás törölve:<br /><span class="help">Egy visszavonást töröltek; például Ön, a  kereskedő meggyőzte vásárlóját, így a fizetendő összeg, melyet korábban visszavontak, újra megérkezett Önhöz.</span>';
$_['entry_order_status_reversed']			= 'Rendelési állapot: Visszafordítva:<br /><span class="help">A befizetés vissza lett fordítva valamilyen ok miatt. Az összeget az Ön bankszámlájára terhelték, és visszafizették  a vásárlónak. Az okot a  reason_code variable tartalmazza.</span>';
$_['entry_order_status_unspecified']		= 'Rendelési állapot: Ismeretlen hiba:';

// Error
$_['error_permission']   = 'Figyelmeztetés: A PayPal fiókon keresztüli fizetés módosítása az Ön számára nem engedélyezett';
$_['error_email']        = 'Az e-mail cím megadása kötelező!';
?>