using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using Ink.Runtime;

public class Title : MonoBehaviour
{
    //private Scene _scene;

    //[SerializeField]
    public Button _choiceButton;
    public AudioSource startingMusic;
    void Start()
    {
        startingMusic.Play();
        _choiceButton.onClick.AddListener(() => LoadGame());
    }

    public void LoadGame()
    {
        //_scene = SceneManager.GetActiveScene();
        SceneManager.LoadScene("InkScene");
    }

}
