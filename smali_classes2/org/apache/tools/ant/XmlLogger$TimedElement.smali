.class Lorg/apache/tools/ant/XmlLogger$TimedElement;
.super Ljava/lang/Object;
.source "XmlLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/XmlLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimedElement"
.end annotation


# instance fields
.field private element:Lorg/w3c/dom/Element;

.field private startTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/XmlLogger$1;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/XmlLogger$TimedElement;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/XmlLogger$TimedElement;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/apache/tools/ant/XmlLogger$TimedElement;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/XmlLogger$TimedElement;J)J
    .locals 0

    .line 131
    iput-wide p1, p0, Lorg/apache/tools/ant/XmlLogger$TimedElement;->startTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/XmlLogger$TimedElement;)Lorg/w3c/dom/Element;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/apache/tools/ant/XmlLogger$TimedElement;->element:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method static synthetic access$202(Lorg/apache/tools/ant/XmlLogger$TimedElement;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/XmlLogger$TimedElement;->element:Lorg/w3c/dom/Element;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger$TimedElement;->element:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/XmlLogger$TimedElement;->element:Lorg/w3c/dom/Element;

    const-string v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
