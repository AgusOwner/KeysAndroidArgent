.class public Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "ParserSupports.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field public static final ERROR_BOTH_ATTRIBUTES:Ljava/lang/String; = "Property and feature attributes are exclusive"

.field public static final ERROR_NO_ATTRIBUTES:Ljava/lang/String; = "Neither feature or property are set"

.field public static final ERROR_NO_VALUE:Ljava/lang/String; = "A value is needed when testing for property support"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final NOT_RECOGNIZED:Ljava/lang/String; = " not recognized: "

.field public static final NOT_SUPPORTED:Ljava/lang/String; = " not supported: "

.field public static final PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field private feature:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method

.method private getReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .line 109
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getParser()Lorg/xml/sax/Parser;

    .line 110
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eval()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property and feature attributes are exclusive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 91
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Neither feature or property are set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->evalFeature()Z

    move-result v0

    return v0

    .line 98
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->evalProperty()Z

    move-result v0

    return v0

    .line 99
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A value is needed when testing for property support"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evalFeature()Z
    .locals 5

    .line 118
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->getReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "true"

    .line 120
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 124
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 129
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "feature not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    return v2

    .line 126
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "feature not recognized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    return v2
.end method

.method public evalProperty()Z
    .locals 5

    .line 140
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->getReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 142
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 147
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "property not supported: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    return v1

    .line 144
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "property not recognized: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->log(Ljava/lang/String;I)V

    return v1
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->feature:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->property:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ParserSupports;->value:Ljava/lang/String;

    return-void
.end method
