.class public Lorg/apache/tools/ant/input/SecureInputHandler;
.super Lorg/apache/tools/ant/input/DefaultInputHandler;
.source "SecureInputHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInput(Lorg/apache/tools/ant/input/InputRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/input/SecureInputHandler;->getPrompt(Lorg/apache/tools/ant/input/InputRequest;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/io/Console;->readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/input/InputRequest;->setInput(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 50
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 51
    invoke-virtual {p1}, Lorg/apache/tools/ant/input/InputRequest;->isInputValid()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 47
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "unexpected end of stream while reading input"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
