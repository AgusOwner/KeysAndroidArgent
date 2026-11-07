.class public final Lcom/venter/shellapp/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/venter/shellapp/SplashActivity;",
        "Landroid/app/Activity;",
        "()V",
        "hadStartedActivity",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private hadStartedActivity:Z


# direct methods
.method public static synthetic $r8$lambda$aqGzpSC9Zr5RncD7qiNaYSD5e8I(Lcom/venter/shellapp/SplashActivity;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/venter/shellapp/SplashActivity;->onCreate$lambda$2(Lcom/venter/shellapp/SplashActivity;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h3uZ-AggB4rf0OZ_-R4YL0TdEsY(Lcom/venter/shellapp/SplashActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/venter/shellapp/SplashActivity;->onCreate$lambda$2$lambda$1(Lcom/venter/shellapp/SplashActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qPJxasQ-evy7Q0vGB5NIP1Z3TAw(Lcom/venter/shellapp/SplashActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/venter/shellapp/SplashActivity;->onCreate$lambda$2$lambda$0(Lcom/venter/shellapp/SplashActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/venter/shellapp/SplashActivity;Lcom/google/gson/JsonObject;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "res"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "res.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "feature"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "feature_new"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 51
    sget-object v6, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    move-object v9, p0

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v5, v10}, Lcom/venter/shellapp/Utils$Companion;->copyDataToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v6, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v6, v4}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v9, v2}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_1

    .line 61
    sget-object v6, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v6, v0}, Lcom/venter/shellapp/Utils$Companion;->delete(Ljava/io/File;)Z

    .line 62
    sget-object v6, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v6, v2}, Lcom/venter/shellapp/Utils$Companion;->delete(Ljava/io/File;)Z

    .line 63
    sget-object v6, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v6, v4}, Lcom/venter/shellapp/Utils$Companion;->delete(Ljava/io/File;)Z

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    sget-object v4, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v3, v9}, Lcom/venter/shellapp/Utils$Companion;->copyDataToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v5, v2}, Lcom/venter/shellapp/Utils$Companion;->copyDataToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v2, v1, v0}, Lcom/venter/shellapp/Utils$Companion;->unZipFileDir(Ljava/io/File;Ljava/io/File;)Z

    .line 69
    sget-object v2, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v2, v1}, Lcom/venter/shellapp/Utils$Companion;->delete(Ljava/io/File;)Z

    :cond_1
    const-string v1, "withPHPEnv"

    .line 72
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    .line 80
    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const-string v5, "lib.zip"

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v3, v4, v5, v6}, Lcom/venter/shellapp/Utils$Companion;->copyDataToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    sget-object v3, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "filesDir"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/venter/shellapp/Utils$Companion;->unZipFileDir(Ljava/io/File;Ljava/io/File;)Z

    .line 87
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v1

    :goto_1
    if-ge v7, v2, :cond_4

    aget-object v3, v1, v7

    .line 88
    invoke-virtual {v3, v8}, Ljava/io/File;->setExecutable(Z)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 91
    :cond_4
    sget-object v1, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    new-instance v2, Lcom/venter/shellapp/PHPServerHelper;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/venter/shellapp/PHPServerHelper;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/venter/shellapp/ServerVers$Companion;->setPhpServerHelper(Lcom/venter/shellapp/PHPServerHelper;)V

    .line 93
    sget-object v0, Lcom/venter/shellapp/ServerVers;->Companion:Lcom/venter/shellapp/ServerVers$Companion;

    invoke-virtual {v0}, Lcom/venter/shellapp/ServerVers$Companion;->getPhpServerHelper()Lcom/venter/shellapp/PHPServerHelper;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v2, "PHPPort"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    new-instance v2, Lcom/venter/shellapp/SplashActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/venter/shellapp/SplashActivity$$ExternalSyntheticLambda0;-><init>(Lcom/venter/shellapp/SplashActivity;)V

    new-instance v3, Lcom/venter/shellapp/SplashActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/venter/shellapp/SplashActivity$$ExternalSyntheticLambda1;-><init>(Lcom/venter/shellapp/SplashActivity;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/venter/shellapp/PHPServerHelper;->startServer(Landroid/os/Handler;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x3e8

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    iput-boolean v8, p0, Lcom/venter/shellapp/SplashActivity;->hadStartedActivity:Z

    .line 117
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/venter/shellapp/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/venter/shellapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->finish()V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final onCreate$lambda$2$lambda$0(Lcom/venter/shellapp/SplashActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/venter/shellapp/SplashActivity;->hadStartedActivity:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/venter/shellapp/SplashActivity;->hadStartedActivity:Z

    .line 98
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/venter/shellapp/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/venter/shellapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->finish()V

    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$2$lambda$1(Lcom/venter/shellapp/SplashActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "php_error"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/venter/shellapp/Utils;->Companion:Lcom/venter/shellapp/Utils$Companion;

    invoke-virtual {v1, v0}, Lcom/venter/shellapp/Utils$Companion;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 105
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 106
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/venter/shellapp/ErrorActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An error has occurred while starting PHP server.\nPlease contact the developer of software.\n\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ErrorMsg"

    .line 107
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v1}, Lcom/venter/shellapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/venter/shellapp/SplashActivity;->hadStartedActivity:Z

    .line 30
    new-instance p1, Lcom/venter/shellapp/CrashHandler;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/venter/shellapp/CrashHandler;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "app-config.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast p1, Ljava/io/Reader;

    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseReader(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 37
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    invoke-virtual {p0}, Lcom/venter/shellapp/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "splash_image"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/venter/shellapp/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 42
    new-instance v0, Ljava/lang/Thread;

    .line 121
    new-instance v1, Lcom/venter/shellapp/SplashActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/venter/shellapp/SplashActivity$$ExternalSyntheticLambda2;-><init>(Lcom/venter/shellapp/SplashActivity;Lcom/google/gson/JsonObject;)V

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
