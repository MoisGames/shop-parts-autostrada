import React, { useContext, useEffect } from 'react';
import styles from './styles/Shop.module.css'
import CategoryBar from '../components/UI/categoryBar/CategoryBar';
import BrandBar from '../components/UI/brandBar/BrandBar';
import PartList from '../components/UI/PartList/PartList';
import { observer } from 'mobx-react-lite';
import { Context } from '../../src/index';
import { fetchBrands, fetchCategories, fetchParts } from '../http/partAPI';
import Footer from '../components/UI/footer/Footer'
import Pages from './Pages';

const Shop = observer (() => {
    const {part} = useContext(Context)
    
    useEffect(() => {
        fetchCategories().then(data => part.setCategories(data))
        fetchBrands().then(data => part.setBrands(data))
        fetchParts().then(data => part.setParts(data.rows))
    }, [])

    return (
        <main className={styles.shop__main_container}>
            <div className={styles.shop__div_container_category}>
            <CategoryBar/>
            </div>
            <div className={styles.shop__div_container_brand_part}>
            <BrandBar/>
            <PartList/>
            <Pages />
            <Footer />
            </div>
            
        </main>
    );
});

export default Shop;