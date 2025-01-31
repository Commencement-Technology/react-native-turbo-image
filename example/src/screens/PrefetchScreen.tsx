import React from 'react';
import { prefetchData } from '../data';
import Card from '../components/Card';
import { FlatList } from 'react-native';

const PrefetchScreen = () => {
  return (
    <FlatList
      data={prefetchData}
      renderItem={({ item }) => (
        <Card size={300} src={item} indicator={{ style: 'large' }} />
      )}
      keyExtractor={(item) => item}
    />
  );
};

export default PrefetchScreen;
