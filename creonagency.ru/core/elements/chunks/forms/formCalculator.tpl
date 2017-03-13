<form action="{$_modx->resource.id}" method="post" class="sendLead" data-id="form_calculator" data-success="#success_calc">
    <input type="text" name="lastname" />
	<input type="hidden" name="type" value="Заявка на заказ с калькулятора" />
    <div class="left">
        <div class="select">
            <p>Кого вы ищете:</p>
            <select class="people_type" name="people_type" id="" placeholder="Выберите элемент">
                <option selected="selected">Выберите персонал</option>
            </select>
            <select class="sub_people_type" name="sub_people_type" style="display:none;">
                
            </select>
        </div>
        <div class="bh_left">
            <div class="line_slider">
                <div class="piople">
                    <p>Количество человек</p>
                    <input class="piople" type="text" value="1" ng-model="workers" name="people_count" />
                </div>
                <div class="ress">
                    <p>0</p>
                </div>
                <div class="clear"></div>
            </div>
            <div class="line_slider ">
                <div class="hours">
                    <p>Количество рабочих часов</p>
                    <input class="hour" type="text" value="1" ng-model="hours" name="hours" />
                </div>
                <div class="ress">
                    <p>1</p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="bh_right">
            <div class="line_slider">
                <div class="days">
                    <p>Количество рабочих дней</p>
                    <input class="days" type="text" value="1" ng-model="days" name="days" />
                </div>
                <div class="ress">
                    <p>1</p>
                </div>
                <div class="clear"></div>
            </div>
            
            <div class="big_checkbox">
                <span class="label">В пределах МКАД</span>
                <input type="text" name="mkad" val="" style="display:none;" />
                <label for="check1"></label>
                <input id="check1" type="checkbox" checked="yes" />
            </div>
            <div class="b_sales visible_tablet">
                <h4>скидки!</h4>
                <div class="line_sale">
                    <h5>Постоянным клиентам <strong>скидка 4%</strong></h5>
                    <p>от агентской комиссии</p>
                </div>
                <div class="line_sale">
                    <h5>Проектам длительностью более 2-х месяцев <strong>скидка 3%</strong></h5>
                    <p>от агентской комиссии</p>
                </div>
            </div>
        </div>
        
        <div class="sel_radio action_type">
            <span class="label">Наличие мед.книжки</span>
            
            <input type="radio" name="group1" id="radio1" name="action_type" value="требуется" />
            <label for="radio1">требуется</label>
            
            <input type="radio" name="group1" id="radio2" checked="yes" name="action_type" value="не требуется" />
            <label for="radio2">не требуется</label>
        </div>
        <div class="sel_radio work_cond">
            <span class="label">Рабочие условия</span>
            
            <input type="radio" name="group2" id="radio3" name="work_cond" value="в помещении"  />
            <label for="radio3">в помещении</label>
            
            <input type="radio" name="group2" id="radio4" checked="yes" name="work_cond" value="на улице" />
            <label for="radio4">на улице</label>
        </div>
        <div class="sel_radio action_time">
            <span class="label">На подготовку акции есть </span>
            
            <input type="radio" name="group3" id="radio5" name="action_time" value="5 рабочих дней" />
            <label for="radio5">5 рабочих дней</label>
            
            <input type="radio" name="group3" id="radio6" checked="yes" name="action_time" value="нет времени" />
            <label for="radio6">нет времени</label>
        </div>
        <div class="clear"></div>
        <div class="b_sales hidden_tablet visible_desktop visible_mobile ">
            <h4>скидки!</h4>
            <div class="line_sale">
                <h5>Постоянным клиентам скидка 20% от агентской комиссии</h5>
            </div>
            <div class="line_sale">
                <h5>Проектам длительностью более <br /> 2-х месяцев скидка 15% от агентской комиссии</h5>
            </div>
        </div>
    </div>
    <div class="right">
        <div class="calc_r_bottom hidden_tablet">
            
            <div class="btn">
                <input type="text" name="name[]" placeholder="Имя" />
                <input type="text" class="required" data-type="phone" name="phone[]" placeholder="Телефон" />
                <input type="text" data-type="email" name="email" placeholder="E-mail" />
                <button type="submit">заказать</button>
                <p>Отправьте нам заявку на заказ вместе с расчетом стоимости</p>
            </div>
        </div>
        <div class="calc_r_top">
            <h5>примерная <small>стоимость работы</small></h5>
            <ul>
                <li><strong>1</strong> человек </li>
                <li><strong>1</strong>-часовой рабочий день</li>
                <li>длительность акции <strong>1</strong></li>
            </ul>
            <div class="price">
                <span>0 руб.</span>
            </div>
            <p class="hint"></p>
            <p><!--a class="down_visible" href="#"-->Из чего состоит?<!--/a--><span class="help"></span></p>
        </div>
        <div class="calc_r_dropdown">
                <div class="item x1">
                    <h5><span>Промоутер</span></h5>
                    <p>0 руб.<small>/день</small><span class="help"></span></p>
                    <div class="line_item x1">
                        <p class="left">х 1 <span>(человек)</span></p>
                        <p class="right"><span>0 руб.</span></p>
                        <div class="clear"></div>
                    </div>
                    <div class="line_item x2">
                        <p class="left">х 1 <span>(дней)</span></p>
                        <p class="right">0 руб.</p>
                        <div class="clear"></div>
                    </div>
                </div>
                <!--<div class="item x2">
                    <h5><span>Оплата координатора</span></h5>
                    <p>1 000 руб.<small>/точка</small></p>
                    <div class="line_item">
                        <p class="left">х 1 <span>(дней)</span></p>
                        <p class="right">1 000 руб.</p>
                        <div class="clear"></div>
                    </div>
                </div>-->
                <div class="item x3">
                    <h5><span>Агентская комиссия</span></h5>
                    <div class="line_item">
                        <p class="left">15%<span class="help"></span></p>
                        <p class="right">0 руб.</p>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="total">
                    <h6>Всего: <span>0 руб.</span></h6>
                    <p>Цена указана с точностью до 90%, она может меняться в зависимости от некоторых факторов</p>
                </div>
                <div class="btn">
                    <!--a class="down_hide" href="#">Свернуть</a-->
                </div>
                
            </div>
        <div class="calc_r_bottom">
            <p class="hidden_desktop">Отправьте нам заявку на заказ вместе с расчетом стоимости</p>
            <div class="btn">
                <input type="text" name="price" style="display: none;" />
                <input type="text" name="name[]" placeholder="Имя" />
                <input type="text" class="required" data-type="phone" name="phone[]" placeholder="Телефон" />
                <button type="submit">заказать</button>
                <p class="hidden_tablet">Отправьте нам заявку на заказ вместе с расчетом стоимости</p>
            </div>
        </div>
        
    </div>
    <div class="clear"></div>
</form>