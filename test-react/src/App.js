import logo from './logo.svg';
import SampleButton from './components/SampleButton';
import CancelButton from './components/CancelButton';
import './App.css';
import SampleParagraph from './components/SampleParagraph';

function App() {
  return (
    <div className="App">
      <div>
        <h1 className="text-2xl">Testing the Design Token</h1>
      </div>
        <div className="button-list">
          <SampleParagraph/>
          <SampleButton title="submit"/>
          <CancelButton title="cancel"/>
        </div>

    </div>
  );
}

export default App;
