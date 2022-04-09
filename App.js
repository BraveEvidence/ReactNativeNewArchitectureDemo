/* eslint-disable react-hooks/exhaustive-deps */
/* eslint-disable react-native/no-inline-styles */
import React, {useEffect, useState} from 'react';
import {SafeAreaView, Text, NativeModules} from 'react-native';

const App = () => {
  const {NumberModule, TextModule} = NativeModules;

  const [first, setFirst] = useState('');
  const [second, setSecond] = useState('');

  useEffect(() => {
    getData();
  }, []);

  const getData = async () => {
    try {
      const firstResult = await TextModule.sendText('Argo');
      const secondResult = await NumberModule.sendNumber('123');
      setFirst(firstResult);
      setSecond(secondResult);
    } catch (e) {
      console.log(e);
    }
  };

  return (
    <SafeAreaView
      style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
      <Text>{first}</Text>
      <Text>{second}</Text>
    </SafeAreaView>
  );
};

export default App;
