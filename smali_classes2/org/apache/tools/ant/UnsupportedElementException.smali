.class public Lorg/apache/tools/ant/UnsupportedElementException;
.super Lorg/apache/tools/ant/BuildException;
.source "UnsupportedElementException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final element:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lorg/apache/tools/ant/UnsupportedElementException;->element:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElement()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/UnsupportedElementException;->element:Ljava/lang/String;

    return-object v0
.end method
