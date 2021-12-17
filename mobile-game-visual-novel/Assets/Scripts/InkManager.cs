using Ink.Runtime;
using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class InkManager : MonoBehaviour
{
    [SerializeField]
    private TextAsset _inkJsonAsset;
    private Story _story;

    [SerializeField]
    private Text _textField;

    [SerializeField]
    private GameObject _textBox;

    [SerializeField]
    private GameObject _backgrounds;

    [SerializeField]
    private GameObject _sounds;

    [SerializeField]
    private VerticalLayoutGroup _choiceButtonContainer;

    [SerializeField]
    private Button _choiceButtonPrefab;

    List<string> tags;
    public AudioSource _theme;
    void Start()
    {
        _theme.Play();
        StartStory();
    }

    private void StartStory()
    {
        //GameObject backgrounds = _gameobjects
        _story = new Story(_inkJsonAsset.text);
        DisplayNextLine();
    }

    public void DisplayNextLine()
    {
        if (_story.canContinue)
        {
            string text = _story.Continue(); // gets next line

            ParseTags();
            //tags = _story.currentTags;
            //Debug.Log(tags);

            text = text?.Trim(); // removes white space from text

            _textField.text = text; // displays new text
        }
        else if (_story.currentChoices.Count > 0)
        {
            _textBox.SetActive(false);
            DisplayChoices();
        }
    }

    private void DisplayChoices()
    {
        // checks if choices are already being displayed
        if (_choiceButtonContainer.GetComponentsInChildren<Button>().Length > 0) return;

        for (int i = 0; i < _story.currentChoices.Count; i++) // iterates through all choices
        {

            var choice = _story.currentChoices[i];
            var button = CreateChoiceButton(choice.text); // creates a choice button

            button.onClick.AddListener(() => OnClickChoiceButton(choice));
        }
    }

    Button CreateChoiceButton(string text)
    {
        // creates the button from a prefab
        var choiceButton = Instantiate(_choiceButtonPrefab);
        choiceButton.transform.SetParent(_choiceButtonContainer.transform, false);

        // sets text on the button
        var buttonText = choiceButton.GetComponentInChildren<Text>();
        buttonText.text = text;

        return choiceButton;
    }

    void OnClickChoiceButton(Choice choice)
    {
        _story.ChooseChoiceIndex(choice.index); // tells ink which choice was selected
        RefreshChoiceView(); // removes choices from the screen
        _textBox.SetActive(true);
        DisplayNextLine();

    }

    void RefreshChoiceView()
    {
        if (_choiceButtonContainer != null)
        {
            foreach (var button in _choiceButtonContainer.GetComponentsInChildren<Button>())
            {
                Destroy(button.gameObject);
            }
        }
    }

    void ParseTags()
    {
        tags = _story.currentTags;
        
        if (tags.Count > 0)
        {
            string condition = tags[0];
            Debug.Log(condition);
            switch(condition.ToLower())
            {
                case "black":
                    SetBackground(condition);
                    break;
                case "dorm":
                    SetBackground(condition);
                    break;
                case "lecture":
                    SetBackground(condition);
                    break;
                case "park":
                    SetBackground(condition);
                    break;
                case "scenic":
                    SetBackground(condition);
                    break;
                case "library":
                    SetBackground(condition);
                    break;
                case "theme1":
                    SetAudio(condition);
                    break;
            }
            
        }
    }

    void SetBackground(string bg)
    {
        foreach (Transform child in _backgrounds.transform)
        {
            if (child.name == bg)
            {
                child.gameObject.SetActive(true);
            }
            else
            {
                child.gameObject.SetActive(false);
            }
        }
    }

    void SetAudio(string aud)
    {
        Debug.Log(aud);
        foreach (Transform child in _sounds.transform)
        {
            if (child.name == aud)
            {
                //child.GetComponent<AudioSource>().Play();
            }
            else
            {
                //child.GetComponent<AudioSource>().Pause();
            }
        }
    }

}