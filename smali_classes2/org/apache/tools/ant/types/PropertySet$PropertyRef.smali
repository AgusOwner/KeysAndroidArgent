.class public Lorg/apache/tools/ant/types/PropertySet$PropertyRef;
.super Ljava/lang/Object;
.source "PropertySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/PropertySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyRef"
.end annotation


# instance fields
.field private builtin:Ljava/lang/String;

.field private count:I

.field private name:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->regex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->builtin:Ljava/lang/String;

    return-object p0
.end method

.method private assertValid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 113
    iget p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->count:I

    if-ne p1, v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Attributes name, regex, and prefix are mutually exclusive"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public setBuiltin(Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builtin"

    .line 104
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->builtin:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    .line 76
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1

    const-string v0, "prefix"

    .line 94
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 1

    const-string v0, "regex"

    .line 85
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->assertValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->regex:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", builtin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->builtin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
