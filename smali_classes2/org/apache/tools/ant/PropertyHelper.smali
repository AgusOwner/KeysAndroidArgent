.class public Lorg/apache/tools/ant/PropertyHelper;
.super Ljava/lang/Object;
.source "PropertyHelper.java"

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;,
        Lorg/apache/tools/ant/PropertyHelper$Delegate;,
        Lorg/apache/tools/ant/PropertyHelper$PropertySetter;,
        Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPANDER:Lorg/apache/tools/ant/property/PropertyExpander;

.field private static final FROM_REF:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

.field private static final SKIP_DOUBLE_DOLLAR:Lorg/apache/tools/ant/property/PropertyExpander;

.field private static final TO_STRING:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;


# instance fields
.field private final delegates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inheritedProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/tools/ant/PropertyHelper;

.field private project:Lorg/apache/tools/ant/Project;

.field private final properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final userProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->TO_STRING:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    .line 197
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->DEFAULT_EXPANDER:Lorg/apache/tools/ant/property/PropertyExpander;

    .line 217
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->SKIP_DOUBLE_DOLLAR:Lorg/apache/tools/ant/property/PropertyExpander;

    .line 237
    new-instance v0, Lorg/apache/tools/ant/PropertyHelper$2;

    invoke-direct {v0}, Lorg/apache/tools/ant/PropertyHelper$2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/PropertyHelper;->FROM_REF:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    .line 260
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    .line 267
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    .line 273
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->FROM_REF:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 274
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->TO_STRING:Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 275
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->SKIP_DOUBLE_DOLLAR:Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    .line 276
    sget-object v0, Lorg/apache/tools/ant/PropertyHelper;->DEFAULT_EXPANDER:Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V

    return-void
.end method

.method private evalAsBooleanOrPropertyName(Ljava/lang/Object;)Z
    .locals 1

    .line 1204
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1208
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected static getDelegateInterfaces(Lorg/apache/tools/ant/PropertyHelper$Delegate;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">;>;"
        }
    .end annotation

    .line 1145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1148
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1149
    const-class v5, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1150
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1153
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1155
    :cond_2
    const-class p0, Lorg/apache/tools/ant/PropertyHelper$Delegate;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 294
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object p0

    .line 295
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;
    .locals 3

    const-class v0, Lorg/apache/tools/ant/PropertyHelper;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "ant.PropertyHelper"

    .line 396
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/PropertyHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 399
    monitor-exit v0

    return-object v1

    .line 402
    :cond_1
    :try_start_1
    new-instance v1, Lorg/apache/tools/ant/PropertyHelper;

    invoke-direct {v1}, Lorg/apache/tools/ant/PropertyHelper;-><init>()V

    .line 403
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/PropertyHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    if-eqz p0, :cond_2

    const-string v2, "ant.PropertyHelper"

    .line 406
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_2
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$getPropertyNames$2(Ljava/util/Set;Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;)V
    .locals 0

    .line 865
    invoke-interface {p1}, Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;->getPropertyNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;
    .locals 2

    .line 199
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/16 v0, 0x24

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v1, v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x7d

    .line 205
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 p2, v1, 0x1

    .line 210
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-ne v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 207
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Syntax error in property: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$1(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;
    .locals 2

    .line 219
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 227
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v1, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne v1, p0, :cond_0

    .line 228
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static nullOrEmpty(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 1192
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static parsePropertyStringDefault(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x24

    .line 1051
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_5

    if-lez v2, :cond_0

    .line 1058
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1062
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v3, "$"

    if-ne v2, v0, :cond_1

    .line 1063
    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 1065
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_3

    .line 1072
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1074
    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x2

    .line 1077
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v2, 0x2

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    .line 1082
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/lit8 v2, v2, 0x2

    .line 1086
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1087
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1088
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Syntax error in property: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1094
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_6

    .line 1095
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public static setNewProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 321
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object p0

    .line 322
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setProperty(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 307
    invoke-static {p0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object p0

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    return-void
.end method

.method public static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .line 1167
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1168
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 1170
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1171
    check-cast p0, Ljava/lang/String;

    .line 1172
    invoke-static {p0}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "off"

    .line 1175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "false"

    .line 1176
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no"

    .line 1177
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1178
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/PropertyHelper$Delegate;)V
    .locals 5

    .line 1106
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1107
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getDelegateInterfaces(Lorg/apache/tools/ant/PropertyHelper$Delegate;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1108
    iget-object v3, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 1110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 1113
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1114
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v3, v4

    :goto_1
    const/4 v4, 0x0

    .line 1116
    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1117
    iget-object v4, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1119
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsProperties(Ljava/lang/String;)Z
    .locals 3

    .line 598
    new-instance v0, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    .line 599
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/property/ParseProperties;->containsProperties(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public copyInheritedProperties(Lorg/apache/tools/ant/Project;)V
    .locals 5

    .line 1000
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1001
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1002
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1003
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/Project;->getUserProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1004
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/apache/tools/ant/Project;->setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public copyUserProperties(Lorg/apache/tools/ant/Project;)V
    .locals 5

    .line 1027
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1029
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1030
    iget-object v4, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1031
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getDelegates(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/apache/tools/ant/PropertyHelper$Delegate;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->delegates:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 1134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getExpanders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;"
        }
    .end annotation

    .line 418
    const-class v0, Lorg/apache/tools/ant/property/PropertyExpander;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInheritedProperties()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    monitor-enter v0

    .line 953
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 954
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getInternalInheritedProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getInternalProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getInternalUserProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNext()Lorg/apache/tools/ant/PropertyHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->next:Lorg/apache/tools/ant/PropertyHelper;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getProperties()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    monitor-enter v0

    .line 921
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 847
    :cond_0
    const-class v1, Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;

    .line 848
    invoke-interface {v2, p1, p0}, Lorg/apache/tools/ant/PropertyHelper$PropertyEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/tools/ant/PropertyHelper;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 852
    :cond_1
    instance-of p1, v2, Lorg/apache/tools/ant/property/NullReturn;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    return-object v0

    .line 854
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyHook(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHook(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 482
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const-string p1, "toString:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 483
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 484
    iget-object p2, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2
    :goto_0
    return-object p3
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 864
    const-class v1, Lorg/apache/tools/ant/PropertyHelper$PropertyEnumerator;

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/PropertyHelper$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 865
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 866
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperties()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    monitor-enter v0

    .line 938
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 902
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/PropertyHelper;->getUserProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseProperties(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 588
    new-instance v0, Lorg/apache/tools/ant/property/ParseProperties;

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    .line 589
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/property/ParseProperties;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parsePropertyString(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-static {p1, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->parsePropertyStringDefault(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method

.method public replaceProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 569
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method public replaceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 550
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/PropertyHelper;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 793
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting ro project property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 798
    :cond_0
    monitor-enter p0

    .line 799
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->inheritedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInheritedProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 776
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->setInheritedProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 696
    const-class v0, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    .line 697
    invoke-interface {v1, p1, p2, p0}, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;->setNew(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 701
    :cond_1
    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    iget-object p2, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override ignored for property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 705
    monitor-exit p0

    return-void

    .line 707
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_3

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting project property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 712
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNewProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 681
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->setNewProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNext(Lorg/apache/tools/ant/PropertyHelper;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iput-object p1, p0, Lorg/apache/tools/ant/PropertyHelper;->next:Lorg/apache/tools/ant/PropertyHelper;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 4

    .line 634
    const-class v0, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/PropertyHelper;->getDelegates(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;

    .line 635
    invoke-interface {v1, p1, p2, p0}, Lorg/apache/tools/ant/PropertyHelper$PropertySetter;->set(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/tools/ant/PropertyHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 639
    :cond_1
    monitor-enter p0

    .line 641
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 642
    iget-object p2, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 643
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Override ignored for user property \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 646
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 648
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    .line 649
    iget-object p3, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 650
    iget-object p3, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding previous definition of property \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 653
    :cond_4
    iget-object p3, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting project property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p3, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :cond_5
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 657
    iget-object p3, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {p3, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_6
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 660
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public setPropertyHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/apache/tools/ant/PropertyHelper;->getNext()Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/PropertyHelper;->setPropertyHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 748
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->project:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting ro project property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 752
    :cond_0
    monitor-enter p0

    .line 753
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->userProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lorg/apache/tools/ant/PropertyHelper;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/PropertyHelper;->setUserProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public testIfCondition(Ljava/lang/Object;)Z
    .locals 1

    .line 1220
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->nullOrEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->evalAsBooleanOrPropertyName(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public testUnlessCondition(Ljava/lang/Object;)Z
    .locals 1

    .line 1232
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->nullOrEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->evalAsBooleanOrPropertyName(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
