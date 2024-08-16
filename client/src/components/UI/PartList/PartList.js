import { observer } from 'mobx-react-lite';
import React, { useContext } from 'react';
import { Context } from '../../..';
import styles from './PartList.module.css'
import PartItem from '../PartItem/PartItem';

const PartList = observer(() => {
    const {part} = useContext(Context)
    return (
        <div className={styles.partList__span}>
            {part.parts.map(part =>
                <PartItem key={part.id} part = {part}/>
            )}
        </div>
    );
});

export default PartList;