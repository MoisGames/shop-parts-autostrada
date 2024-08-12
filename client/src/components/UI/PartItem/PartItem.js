import React from 'react';
import styles from './PartItem.module.css'
import {PART_ROUTE } from '../../../utils/const';
import {useNavigate} from 'react-router-dom'
import ButtonBuy from '../button/ButtonBuy';


const PartItem = ({part}) => {
    const navigate = useNavigate()
    // const AvailabilityPart = () => {
    //     availability = part.diksona + part.lado + part.semaf + part.kalinina
    //     return availability
    // }

    return (
        <div 
            className={styles.PartItem__container} 
            onClick={() => navigate(PART_ROUTE + '/' + part.id)}
            >
            <div className={styles.PartItem__item}>
                <img 
                    alt='logo_part' 
                    className={styles.PartItem__logo} 
                    src={process.env.REACT_APP_API_URL + part.img}></img>
                    <div>
                        <div className={styles.PartItem__name}>
                        {part.name_parts}
                        </div>
                        <div>
                        Артикул: {part.id.toString().padStart(6, '0')}
                        </div>
                        <div className={styles.PartItem__price}>
                        {Intl.NumberFormat('ru-RU', { style: 'currency', currency: 'RUB' }).format(part.price)}
                        </div>
                        <div className={styles.partItem__availability_container}>
                            <ButtonBuy name='Купить'/>
                        </div>
                    </div>
            </div>
        </div>
    );
};

export default PartItem;