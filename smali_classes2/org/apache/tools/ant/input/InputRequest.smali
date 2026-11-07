.class public Lorg/apache/tools/ant/input/InputRequest;
.super Ljava/lang/Object;
.source "InputRequest.java"


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private input:Ljava/lang/String;

.field private final prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/input/InputRequest;->prompt:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prompt must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/input/InputRequest;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/input/InputRequest;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/input/InputRequest;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isInputValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/input/InputRequest;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/input/InputRequest;->input:Ljava/lang/String;

    return-void
.end method
