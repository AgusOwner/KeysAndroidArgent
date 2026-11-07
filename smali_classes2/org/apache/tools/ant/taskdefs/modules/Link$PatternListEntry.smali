.class public Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatternListEntry"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private pattern:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .locals 1

    .line 1070
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "@"

    .line 1071
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1072
    new-instance p1, Ljava/io/File;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->setListFile(Ljava/io/File;)V

    goto :goto_0

    .line 1074
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->setPattern(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getListFile()Ljava/io/File;
    .locals 1

    .line 1106
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 1084
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public setListFile(Ljava/io/File;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    return-void
.end method

.method public toOptionValue()Ljava/lang/String;
    .locals 2

    .line 1145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public validate()V
    .locals 3

    .line 1128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->pattern:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->file:Ljava/io/File;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1131
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$PatternListEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1133
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Each entry in a pattern list must specify exactly one of pattern or file."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
