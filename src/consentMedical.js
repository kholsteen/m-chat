import React, { Component } from 'react';
import { View, Text } from 'react-native';
import i18n from './i18n';
import { ConsentPrefab } from './consentPrefab';

export class ConsentMedical extends Component {
   static navigationOptions = {
    header: ({
      visible: true,
    }),
  };

onNextPressed() {
  const { navigate } = this.props.navigation;
  navigate('ConsentFollowUp');
}

  render() {
    return (
      <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
        <ConsentPrefab onPress={() => this.onNextPressed()} learnURL={require('../webviews/consent8LearnMore.html')} image={require("../pngs/not_medicalkopya.png")} textHeader={i18n.t('notMedicalCare.header')} text={i18n.t('notMedicalCare.text')} />
      </View>
    );
  }
}