import React, { Component } from 'react';
import { View } from 'react-native';
import i18n from '../i18n';
import * as analytics from '../analytics';
import { ConsentPrefab } from './consentPrefab';
import * as utils from '../util';

export class ConsentFollowUp extends Component {
  static navigationOptions = {
    header: ({
      visible: true,
    }),
  };

  onNextPressed() {
    analytics.screen('Follow Up(consent)');
    analytics.event('Next clicked on ConsentFollowUp');
    utils.navigateTo(this, 'EligibilityRelation');
  }

  renderTR() {
    return (
      <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
        <ConsentPrefab onPress={() => this.onNextPressed()} learnURL={'file:///android_asset/webviews/consent9LearnMoreTR.html'} image={require("../../pngs/follow_upkopya.png")} textHeader={i18n.t('followUp.header')} text={i18n.t('followUp.text')} />
      </View>
    );
  }

  renderEN() {

    return (
      <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
        <ConsentPrefab onPress={() => this.onNextPressed()} learnURL={'file:///android_asset/webviews/consent9LearnMoreEN.html'} image={require("../../pngs/follow_upkopya.png")} textHeader={i18n.t('followUp.header')} text={i18n.t('followUp.text')} />
      </View>
    );
  }
  render() {
    if (i18n.t('yes') === 'Yes') {
      return this.renderEN();
    } else {
      return this.renderTR();
    }
  }
}
