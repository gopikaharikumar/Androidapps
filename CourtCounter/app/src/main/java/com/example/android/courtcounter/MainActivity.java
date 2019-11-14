package com.example.android.courtcounter;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    int scoreTeamA;
    int scoreTeamB;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }
    /**
     * Displays the given score for Team A.
     */
    public void displayForTeamA(int score) {
        TextView scoreView = (TextView) findViewById(R.id.team_a_score);
        scoreView.setText(String.valueOf(score));
    }
    public void addThreeForTeamA(View v){
        displayForTeamA(0);
        scoreTeamA=scoreTeamA+3;
        displayForTeamA(scoreTeamA);
    }
    public void addTwoForTeamA(View v)
    {
        displayForTeamA(0);
        scoreTeamA=scoreTeamA+2;
        displayForTeamA(scoreTeamA);

    }
    public void addOneForTeamA(View v)
    {
        displayForTeamA(0);
        scoreTeamA=scoreTeamA+1;
        displayForTeamA(scoreTeamA);

    }
    /**
     * Displays the given score for Team B.
     */
    public void displayForTeamB(int score) {
        TextView scoreView = (TextView) findViewById(R.id.team_b_score);
        scoreView.setText(String.valueOf(score));
    }
    public void addThreeForTeamB(View v){
        displayForTeamB(0);
        scoreTeamB=scoreTeamB+3;
        displayForTeamB(scoreTeamB);
    }
    public void addTwoForTeamB(View v)
    {
        displayForTeamB(0);
        scoreTeamB=scoreTeamB+2;
        displayForTeamB(scoreTeamB);

    }
    public void addOneForTeamB(View v)
    {
        displayForTeamB(0);
        scoreTeamB=scoreTeamB+1;
        displayForTeamB(scoreTeamB);

    }
    public void resetScore(View v)
    {
        scoreTeamA=0;
        scoreTeamB=0;
        displayForTeamA(scoreTeamA);
        displayForTeamB(scoreTeamB);
    }



}
