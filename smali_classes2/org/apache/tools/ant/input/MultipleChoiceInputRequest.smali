.class public Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;
.super Lorg/apache/tools/ant/input/InputRequest;
.source "MultipleChoiceInputRequest.java"


# instance fields
.field private final choices:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/input/InputRequest;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 54
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->choices:Ljava/util/LinkedHashSet;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "choices must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getChoices()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->choices:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isInputValid()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->choices:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/input/MultipleChoiceInputRequest;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
