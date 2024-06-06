package com.example.happybirthday

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.happybirthday.ui.theme.HappyBirthdayTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            HappyBirthdayTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    GreetingImage(message = "Happy Birthday Bernardo!", from = "From: Rodrigo")
                }
            }
        }
    }
}

@Composable
fun GreetingImage(message: String, from: String, modifier: Modifier = Modifier){
    val image = painterResource(R.drawable.the_witcher)
    Box (modifier, contentAlignment = Alignment.TopCenter){
        Image(painter = image, contentDescription = null, contentScale = ContentScale.Crop, alpha = 0.7f)
        GreetingText(message = message, from = from, modifier = Modifier.padding(8.dp))
    }
}

@Composable
fun GreetingText(modifier: Modifier = Modifier, message: String = "Default message", from: String = "Default from") {
    Column (  modifier = Modifier.padding(8.dp),
        verticalArrangement = Arrangement.Center
        ){
        Text(
            text = message,
            modifier = Modifier.padding(bottom = 8.dp),
            fontSize = 30.sp,
            lineHeight = 116.sp,
            textAlign = TextAlign.Center
        )
        Text(
            text = from,
            fontSize = 36.sp,
            lineHeight = 56.sp,
            modifier = Modifier
                .padding(16.dp)
                .align(Alignment.End).background(color = Color.Cyan)
        )
    }
}

@Preview(showBackground = true
)
@Composable
fun BirthdayCardPreview(){
    HappyBirthdayTheme {
        GreetingImage(message = "Happy Birthday Bernardo!", from = "From: Rodrigo")
    }
}