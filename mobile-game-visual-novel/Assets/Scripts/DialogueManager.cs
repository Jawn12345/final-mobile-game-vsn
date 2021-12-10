using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class DialogueManager : MonoBehaviour
{
    public TextAsset inkFile;
    public GameObject textBox;
    public GameObject customButton;
    public GameObject optionPanel;
    public bool isTalking = false;

    static Story story;
    Text nametag;
    Text message;
    List<string> tags;
    static Choice choiceSelected;

    void Start()
    {
        story = new Story(inkFile.text);
        //nametag = textBox.transform.GetChild(0).GetComponent<Text>();
        //message = textBox.transform.GetChild(1).GetComponent<Text>();
        message = textBox.transform.GetChild(0).GetComponent<Text>();
        tags = new List<string>();
        choiceSelected = null;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //Debug.Log(story.canContinue);
            if (story.canContinue)
            {
                //nametag.text = "Phoenix";
                AdvanceDialogue();
                Debug.Log(story.currentChoices.Count);
                if (story.currentChoices.Count != 0)
                {
                    StartCoroutine(ShowChoices());
                }
            }
            else
            {
                FinishDialogue();
                Debug.Log(story.currentText);
            }
        }
    }

    private void FinishDialogue()
    {
        Debug.Log("End of Dialogue!");
    }

    void AdvanceDialogue()
    {
        string currentSentence = story.Continue();
        ParseTags();
        StopAllCoroutines();
        StartCoroutine(TypeSentence(currentSentence));
    }

    IEnumerator TypeSentence(string sentence)
    {
        message.text = "";
        foreach(char letter in sentence.ToCharArray())
        {
            message.text += letter;
            yield return null;
        }
        /*
        CharacterScript tempSpeaker = GameObject.FindObjectOfType<CharacterScript>();
        if (tempSpeaker.isTalking)
        {
            SetAnimation("idle");
        }*/
        yield return null;
    }

    IEnumerator ShowChoices()
    {
        Debug.Log("Choices need to be made");
        List<Choice> _choices = story.currentChoices;
        for (int i = 0; i < _choices.Count; i++)
        {
            Debug.Log(i);
            GameObject temp = Instantiate(customButton, optionPanel.transform);
            //GameObject temp = Instantiate(customButton, optionPanel.transform.GetChild(i));//.transform) ;
            temp.transform.GetChild(0).GetComponent<Text>().text = _choices[i].text;
            temp.AddComponent<Selectable>();
            temp.GetComponent<Selectable>().element = _choices[i];
            temp.GetComponent<Button>().onClick.AddListener(() => { temp.GetComponent<Selectable>().Decide(); });
        }
        optionPanel.SetActive(true);

        yield return new WaitUntil(() => { return choiceSelected != null; });

        AdvanceFromDecision();
    }

    // Tells the story which branch to go to
    public static void SetDecision(object element)
    {
        choiceSelected = (Choice)element;
        story.ChooseChoiceIndex(choiceSelected.index);
    }

    void DeleteButtons()
    {
        int i = 0;

        //Array to hold all child obj
        GameObject[] allChildren = new GameObject[optionPanel.transform.childCount];

        //Find all child obj and store to that array
        foreach (Transform child in optionPanel.transform)
        {
            allChildren[i] = child.gameObject;
            i += 1;
        }

        //Now destroy them
        foreach (GameObject child in allChildren)
        {
            DestroyImmediate(child.gameObject);
        }
    }

    // After a choice was made, turn off the panel and advance from that choice
    void AdvanceFromDecision()
    {
        optionPanel.SetActive(false);
        DeleteButtons();
    }

    void ParseTags()
    {
        tags = story.currentTags;
        foreach (string t in tags)
        {
            string prefix = t.Split(' ')[0];
            string param = t.Split(' ')[1];

            /*
            switch(prefix.ToLower())
            {
                case "anim":
                    SetAnimation(param);
                    break;
                case "color":
                    SetTextColor(param);
                    break;
            }*/
        }
    }

}
