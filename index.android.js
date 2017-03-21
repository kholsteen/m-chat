import React from 'react';
import {
  AppRegistry,
  Text,
  View,
  Button,
} from 'react-native';
import { StackNavigator } from 'react-navigation';
import { MChat } from './src/app';
import { Gender } from './src/gender';
import { resetTo } from './src/util';
import { Logic } from './src/logic';
import { Home } from './src/home';
import { SurveyDone } from './src/surveyDone';
import i18n from './src/i18n';
import q1 from './questions/q1.json';
import q2 from './questions/q2.json';
import q3 from './questions/q3.json';
import q4 from './questions/q4.json';
import q5 from './questions/q5.json';
import q6 from './questions/q6.json';
import q7 from './questions/q7.json';
import q8 from './questions/q8.json';


class HomeScreen extends React.Component {
  static navigationOptions = {
    header: ({
      visible: false,
    }),
  };

  constructor(props) {
    super(props);
    this.state = {
      ok: false,
    };
    this.logic = new Logic([q1, q2, q3]);
  }

  async dataOk() {
    try {
      const ok = await this.logic.haveDataOnDisk();
      this.setState({ ok });
    } catch (error) {
      console.error(error);
    }
  }

  componentDidMount() {
    this.dataOk();
  }

  async loadSurvey() {
    const ok = await this.logic.haveDataOnDisk();
    if (ok) {
      const a = await this.logic.loadState();
      this.logic.startSurveyTimers();
      resetTo(this, 'app', { logic: this.logic, id: '', start: true });
    } else {
      this.startSurvey();
    }
  }

  startSurvey() {
    this.logic.startSurveyTimers();
    resetTo(this, 'app', { logic: this.logic });
  }
  render() {
    const { navigate } = this.props.navigation;
    return (
      <View>
        <Button
          onPress={() => this.loadSurvey()}
          title={this.state.ok ? i18n.t('continue') : i18n.t('start')}
        />
      </View>
    );
  }
}

const SimpleApp = StackNavigator({
  Home: { screen: HomeScreen },
  app: { screen: MChat },
  result: { screen: SurveyDone },
});

AppRegistry.registerComponent('m_chat', () => SimpleApp);

/*
import { MChat } from './src/app';

AppRegistry.registerComponent('m_chat', () => MChat);
*/
