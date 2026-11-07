.class public Lorg/apache/tools/ant/types/PatternSet$NameEntry;
.super Ljava/lang/Object;
.source "PatternSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/PatternSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameEntry"
.end annotation


# instance fields
.field private ifCond:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/types/PatternSet;

.field private unlessCond:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/PatternSet;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->this$0:Lorg/apache/tools/ant/types/PatternSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private valid(Lorg/apache/tools/ant/Project;)Z
    .locals 1

    .line 149
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/PropertyHelper;->testIfCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    .line 151
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/PropertyHelper;->testUnlessCondition(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public evalName(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->valid(Lorg/apache/tools/ant/Project;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIf(Ljava/lang/Object;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    return-void
.end method

.method public setIf(Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setIf(Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setUnless(Ljava/lang/Object;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    return-void
.end method

.method public setUnless(Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->setUnless(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "noname"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, ":"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v1, "if->"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->ifCond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 174
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unless->"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lorg/apache/tools/ant/types/PatternSet$NameEntry;->unlessCond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
